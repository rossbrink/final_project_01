class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.integer :credential_id
      t.integer :provider_id

      t.timestamps
    end
  end
end
