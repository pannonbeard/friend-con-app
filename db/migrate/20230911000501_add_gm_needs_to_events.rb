class AddGmNeedsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :gm_needs, :text
  end
end
