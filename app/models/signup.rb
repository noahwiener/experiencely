# == Schema Information
#
# Table name: signups
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  workshop_id  :integer          not null
#  num_in_party :integer          default(1)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Signup < ActiveRecord::Base

  belongs_to :user
  belongs_to :workshop
end
