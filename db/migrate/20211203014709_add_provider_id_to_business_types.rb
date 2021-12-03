class AddProviderIdToBusinessTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :business_types, :provider_id, :integer
  end
end
