class AddStartAndEndDateToGamingYear < ActiveRecord::Migration[7.0]
  def change
    add_column :gaming_years, :start_date, :date
    add_column :gaming_years, :end_date, :date
  end
end
