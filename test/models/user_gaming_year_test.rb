# == Schema Information
#
# Table name: user_gaming_years
#
#  id             :bigint           not null, primary key
#  user_id        :bigint           not null
#  gaming_year_id :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class UserGamingYearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
