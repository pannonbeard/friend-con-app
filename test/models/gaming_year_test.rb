# == Schema Information
#
# Table name: gaming_years
#
#  id           :bigint           not null, primary key
#  year         :integer
#  signup_key   :text
#  active       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  seating_open :boolean          default(FALSE)
#  start_date   :date
#  end_date     :date
#
require "test_helper"

class GamingYearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
