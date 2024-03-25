class AddGamingYearToEvent < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :gaming_year, null: false, foreign_key: true
  end
end
