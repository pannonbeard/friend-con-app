class CreateUserGamingYears < ActiveRecord::Migration[7.0]
  def change
    create_table :user_gaming_years do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :gaming_year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
