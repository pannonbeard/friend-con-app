class AddAttendingVirtuallyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :attending_virtually, :boolean, default: false
  end
end
