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

  has_one(:schedule, { :class_name => "Schedule", :foreign_key => "provider_id", :dependent => :destroy })

  has_one(:spoken_language, { :class_name => "SpokenLanguage", :foreign_key => "provider_id", :dependent => :destroy })

  has_one(:business_type, { :class_name => "BusinessType", :foreign_key => "provider_id", :dependent => :destroy })


  def full_name
    first = self.first_name
    last = self.last_name
    full = first + " " + last
    return full
  end
end
