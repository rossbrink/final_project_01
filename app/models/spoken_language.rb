# == Schema Information
#
# Table name: spoken_languages
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  language_id :integer
#  provider_id :integer
#
class SpokenLanguage < ApplicationRecord
end
