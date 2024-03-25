class AddSeatingOpenToGamingYears < ActiveRecord::Migration[7.0]
  def change
    add_column :gaming_years, :seating_open, :boolean, default: false
  end
end
