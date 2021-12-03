# == Schema Information
#
# Table name: availabilities
#
#  id          :integer          not null, primary key
#  close_time  :time
#  day         :string
#  open_time   :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  schedule_id :integer
#
class Availability < ApplicationRecord
  belongs_to(:schedule, { :required => true, :class_name => "Schedule", :foreign_key => "schedule_id" })

end
