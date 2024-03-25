class ChangeTimeSLotToDateForEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :time_slot, :day
  end
end
