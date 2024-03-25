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
class Event < ApplicationRecord
  belongs_to :user
  belongs_to :gaming_year
  has_many :seats, dependent: :destroy
  
  serialize :willing_slots

  validates :start_time, presence: true

  include Events::TimeMethods
  include Events::SeatingMethods
  
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "day", "description", "event_length", "game_type", "gaming_year_id", "gm_needs", "id", "seats_available", "start_time", "supplies_needed", "system_name", "table", "title", "updated_at", "user_id", "virtual", "willing_slots"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["gaming_year", "seats", "user"]
  end
end
