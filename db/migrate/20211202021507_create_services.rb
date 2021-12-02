class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.integer :provider_id
      t.integer :need_id

      t.timestamps
    end
  end
end
