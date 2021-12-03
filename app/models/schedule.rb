# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  provider_id :integer
#
class Schedule < ApplicationRecord
  belongs_to(:provider, { :required => true, :class_name => "Provider", :foreign_key => "provider_id" })
  has_many(:availabilities, { :class_name => "Availability", :foreign_key => "schedule_id", :dependent => :destroy })
end
