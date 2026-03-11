class CreateOneTimeLogins < ActiveRecord::Migration[8.1]
  def change
    create_table :one_time_logins do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :token
      t.string :uuid
      t.datetime :expires_at
      t.boolean :used, default: false

      t.timestamps
    end
  end
end
