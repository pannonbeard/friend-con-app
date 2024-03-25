# == Schema Information
#
# Table name: events
#
#  id              :bigint           not null, primary key
#  title           :string
#  description     :text
#  seats_available :integer
#  user_id         :bigint           not null
#  supplies_needed :text
#  virtual         :boolean
#  table           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  day             :string
#  willing_slots   :text
#  gaming_year_id  :bigint           not null
#  game_type       :string
#  system_name     :string
#  gm_needs        :text
#  event_length    :integer
#  start_time      :datetime
#
require "test_helper"

class EventTest < ActiveSupport::TestCase
  test 'invalid event without user or start time' do
    gaming_year = GamingYear.new({ year: Time.zone.today.year })
    event = Event.new(title: 'blah', start_time: nil, user: nil, gaming_year: gaming_year)

    assert event.invalid?, 'Event should be invalid'
  end

  test 'invalid event without start time' do
    gaming_year = GamingYear.new({ year: Time.zone.today.year })
    user = User.new(email: 'something@gmai.com')
    event = Event.new(title: 'blah', start_time: nil, user: user, gaming_year: gaming_year)

    assert event.invalid?, 'Event should be invalid'
  end
end
