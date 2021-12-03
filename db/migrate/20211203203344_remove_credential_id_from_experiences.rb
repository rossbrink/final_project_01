class RemoveCredentialIdFromExperiences < ActiveRecord::Migration[6.0]
  def change
    remove_column :experiences, :credential_id, :integer
  end
end
