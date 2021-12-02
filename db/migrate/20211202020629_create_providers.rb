class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :organization_name
      t.string :first_name
      t.string :last_name
      t.string :description
      t.decimal :price
      t.string :address

      t.timestamps
    end
  end
end
