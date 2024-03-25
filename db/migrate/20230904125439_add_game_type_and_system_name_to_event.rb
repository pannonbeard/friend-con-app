class AddGameTypeAndSystemNameToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :game_type, :string
    add_column :events, :system_name, :string
  end
end
