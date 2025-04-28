class CreateLibraryGames < ActiveRecord::Migration[7.0]
  def change
    create_table :library_games do |t|
      t.string :title
      t.string :publisher
      t.integer :player_count
      t.string :game_type
      t.text :supplies_needed
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :gaming_year_library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
