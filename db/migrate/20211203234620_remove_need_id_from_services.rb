class RemoveNeedIdFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :need_id, :integer
  end
end
