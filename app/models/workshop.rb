# == Schema Information
#
# Table name: workshops
#
#  id                :integer          not null, primary key
#  host_id           :integer          not null
#  title             :string           not null
#  details           :text
#  date              :date
#  start_time        :time
#  current_attendees :integer          default(0)
#  max_attendees     :integer
#  lat               :float
#  lng               :float
#  location          :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  price             :string
#  body              :text
#

class Workshop < ActiveRecord::Base
  validates :host_id, :location, presence: true

  has_many :photos, as: :imageable
  has_many :host_photos, through: :host, source: :photos
  belongs_to :host, class_name: "User", foreign_key: :host_id, primary_key: :id
  has_many :signups
  has_many :attendees, through: :signups, source: :user


  def sorted_photos
    photos.sort do |photo1, photo2|
      photo1.name <=> photo2.name
    end
  end

  def all_photos
    photos + host_photos
  end
end
