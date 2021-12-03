# == Schema Information
#
# Table name: needs
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  service_id  :integer
#
class Need < ApplicationRecord
  belongs_to(:service, { :class_name => "Service", :foreign_key => "service_id", :counter_cache => true })
end
