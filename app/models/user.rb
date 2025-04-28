# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  attending_virtually    :boolean          default(FALSE)
#  shirt_size             :string
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles
  has_many :events, dependent: :destroy
  has_many :seats, dependent: :destroy

  has_many :user_gaming_years, dependent: :destroy
  has_many :gaming_years, through: :user_gaming_years

  has_many :library_games, dependent: :destroy

  before_create :add_to_current_year

  def add_to_current_year
    current_year = GamingYear.current_gaming_year
    gaming_years << current_year
  end

  def signed_up_for_year?(gaming_year)
    user_gaming_years.find_by(gaming_year: gaming_year).present?
  end

  def role?(name)
    roles.include? Role.find_by(name: name.to_s)
  end

  def involved_events
    [seated_events, events.current_year].flatten.sort_by{ |ev| [ev.day_of_week, ev.start_of_game, ev.title] }
  end

  def seated_events
    seats.current_year.map(&:event)
  end

  def seated_at_event(event)
    involved_events.include? event
  end

  def already_seated(event)
    involved_events.any? { |ev| ev.event_start_durring_event(event.start_time, event.day) || event.event_start_durring_event(ev.start_time, ev.day) }
  end

  def seat(event)
    seats.where(event: event).first
  end
end
