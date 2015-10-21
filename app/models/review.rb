# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  workshop_id :integer          not null
#  title       :string
#  body        :text
#  rating      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :workshop

  def userinfo
    name = (user.first_name + " " + user.last_name[0] + ".")
    photo = user.photos[0].url
    {username: name, user_profile_pic: photo}
  end

  def workshopinfo
    title = workshop.title
    date = workshop.date
    host = (workshop.host.first_name + " " + workshop.host.last_name[0] + ".")
    {workshop_title: title, workshop_date: date, host_name: host}
  end

end
