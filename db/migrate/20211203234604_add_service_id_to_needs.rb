class AddServiceIdToNeeds < ActiveRecord::Migration[6.0]
  def change
    add_column :needs, :service_id, :integer
  end
end
