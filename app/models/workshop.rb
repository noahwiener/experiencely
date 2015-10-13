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
#

class Workshop < ActiveRecord::Base
end
