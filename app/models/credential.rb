# == Schema Information
#
# Table name: credentials
#
#  id            :integer          not null, primary key
#  date_received :date
#  description   :string
#  institution   :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  experience_id :integer
#
class Credential < ApplicationRecord
  belongs_to(:experience, { :required => true, :class_name => "Experience", :foreign_key => "experience_id" })
  
end
