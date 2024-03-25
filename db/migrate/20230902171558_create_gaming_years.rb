class CreateGamingYears < ActiveRecord::Migration[7.0]
  def change
    create_table :gaming_years do |t|
      t.integer :year
      t.text :signup_key
      t.boolean :active

      t.timestamps
    end
  end
end
