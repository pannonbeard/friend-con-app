class AddStartTimeToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :start_time, :datetime
  end
end
