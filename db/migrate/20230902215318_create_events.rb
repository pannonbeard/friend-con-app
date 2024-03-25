class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :seats
      t.belongs_to :user, null: false, foreign_key: true
      t.text :supplies_needed
      t.boolean :virtual
      t.string :table

      t.timestamps
    end
  end
end
