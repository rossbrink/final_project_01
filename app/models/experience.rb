# == Schema Information
#
# Table name: experiences
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  credential_id :integer
#  provider_id   :integer
#
class Experience < ApplicationRecord
end
