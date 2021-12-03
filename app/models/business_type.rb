# == Schema Information
#
# Table name: business_types
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  provider_id :integer
#
class BusinessType < ApplicationRecord
end
