# == Schema Information
#
# Table name: library_games
#
#  id                     :bigint           not null, primary key
#  title                  :string
#  publisher              :string
#  player_count           :integer
#  game_type              :string
#  supplies_needed        :text
#  user_id                :bigint           not null
#  gaming_year_library_id :bigint           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class LibraryGame < ApplicationRecord
  belongs_to :user
  belongs_to :gaming_year_library

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "game_type", "gaming_year_library_id", "id", "player_count", "publisher", "supplies_needed", "title", "updated_at", "user_id"]
  end
end
