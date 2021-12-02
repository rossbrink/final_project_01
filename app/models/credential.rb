# == Schema Information
#
# Table name: credentials
#
#  id            :integer          not null, primary key
#  date_received :date
#  description   :string
#  institution   :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Credential < ApplicationRecord
end
