# == Schema Information
#
# Table name: providers
#
#  id                :integer          not null, primary key
#  address           :string
#  description       :string
#  email             :string
#  first_name        :string
#  image             :string
#  last_name         :string
#  organization_name :string
#  password_digest   :string
#  price             :decimal(, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Provider < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
end
