class CreateAvailabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :availabilities do |t|
      t.integer :day
      t.time :open_time
      t.time :close_time
      t.integer :schedule_id

      t.timestamps
    end
  end
end
