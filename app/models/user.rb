# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  user_name       :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  first_name      :string
#  last_name       :string
#  about_me        :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  #
  # has many signups
  # has many reviews
  # has many upcoming_workshops thru signups
  # has many attended_workshops thru signups

  after_initialize :ensure_session_token

  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :session_token, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true

  has_many :photos, as: :imageable
  has_many :workshops_hosted, class_name: "Workshop", foreign_key: :host_id, primary_key: :id
  has_many :signups
  has_many :workshops_attended, through: :signups, source: :workshop
  has_many :reviews
  has_many :reviews_of_self, through: :workshops_hosted, source: :reviews

  attr_reader :password

  def attended
    workshops_attended.where('date < ?', Date.today).order('date')
  end

  def upcoming
    workshops_attended.where('date >= ?', Date.today).order('date')
  end

  def reviewed?(workshop)
    # if this is the correct thing to do, rewrite as SQL query
    reviews.any? { |review| review.workshop_id == workshop.id}
  end

  def review(workshop)
    reviews.select { |review| review.workshop_id == workshop.id }
  end

  def avg_reviews
    num_reviews = 0
    total = 0
    reviews_of_self.each do |review|
      if review.rating
        total += review.rating
        num_reviews += 1
      end
    end
    (total.to_f)/num_reviews
  end

  def self.find_by_credentials(user_name, password)
    user = User.find_by(user_name: user_name)

    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end
end
