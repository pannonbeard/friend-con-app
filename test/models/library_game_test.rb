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
require "test_helper"

class LibraryGameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
