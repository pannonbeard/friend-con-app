class AddTimeFramesToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :time_slot, :string
  end
end
