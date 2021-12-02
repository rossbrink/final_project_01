class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :email
      t.string :password_digest
      t.string :organization_name
      t.string :image
      t.string :first_name
      t.string :last_name
      t.string :description
      t.decimal :price
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
