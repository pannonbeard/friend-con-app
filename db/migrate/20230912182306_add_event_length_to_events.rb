class AddEventLengthToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :event_length, :integer
  end
end
