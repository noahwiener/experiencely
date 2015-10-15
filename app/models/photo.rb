# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  name           :string
#  imageable_id   :integer
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
end
