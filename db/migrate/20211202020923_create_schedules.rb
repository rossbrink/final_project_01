class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :provider_id

      t.timestamps
    end
  end
end
