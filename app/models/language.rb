# == Schema Information
#
# Table name: languages
#
#  id                 :integer          not null, primary key
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  spoken_language_id :integer
#
class Language < ApplicationRecord
  belongs_to(:spoken_language, { :class_name => "SpokenLanguage", :foreign_key => "spoken_language_id"})
end
