class AddWillingSlotsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :willing_slots, :text
  end
end
