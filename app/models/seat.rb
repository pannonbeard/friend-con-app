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
class Seat < ApplicationRecord
  belongs_to :user
  belongs_to :event

  scope :current_year, -> { includes(event: [:gaming_year]).where(gaming_year: { active: true }) }
end
