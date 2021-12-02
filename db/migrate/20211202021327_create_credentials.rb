class CreateCredentials < ActiveRecord::Migration[6.0]
  def change
    create_table :credentials do |t|
      t.string :name
      t.date :date_received
      t.string :description
      t.string :institution

      t.timestamps
    end
  end
end
