# == Schema Information
#
# Table name: spoken_languages
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  provider_id :integer
#
class SpokenLanguage < ApplicationRecord
  belongs_to(:provider, { :required => true, :class_name => "Provider", :foreign_key => "provider_id" })
  has_many(:languages, { :class_name => "Language", :foreign_key => "spoken_language_id", :dependent => :nullify })
end
