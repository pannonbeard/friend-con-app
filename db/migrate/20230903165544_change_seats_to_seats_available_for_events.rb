class ChangeSeatsToSeatsAvailableForEvents < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :seats, :seats_available
  end
end
