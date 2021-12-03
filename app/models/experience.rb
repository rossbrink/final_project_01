# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  provider_id :integer
#
class Experience < ApplicationRecord
  belongs_to(:provider, { :required => true, :class_name => "Provider", :foreign_key => "provider_id" })
  has_many(:credentials, { :class_name => "Credential", :foreign_key => "experience_id", :dependent => :destroy })
end
