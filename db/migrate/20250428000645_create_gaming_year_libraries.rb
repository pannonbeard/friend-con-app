class CreateGamingYearLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :gaming_year_libraries do |t|
      t.belongs_to :gaming_year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
