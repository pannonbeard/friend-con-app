# == Schema Information
#
# Table name: seats
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  event_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SeatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
