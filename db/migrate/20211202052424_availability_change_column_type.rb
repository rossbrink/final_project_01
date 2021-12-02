class AvailabilityChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column(:availabilities, :day, :string)
  end

  def up
    change_column(:availabilities, :day, :string)
  end

  def down
    change_column(:availabilities, :day, :integer)
  end
end
