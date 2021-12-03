# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  provider_id :integer
#
class Service < ApplicationRecord
  belongs_to(:provider, { :required => true, :class_name => "Provider", :foreign_key => "provider_id" })
  has_many(:needs, { :class_name => "Need", :foreign_key => "service_id", :dependent => :destroy })
end
