class AddExperienceIdToCredentials < ActiveRecord::Migration[6.0]
  def change
    add_column :credentials, :experience_id, :integer
  end
end
