module Events
  module TimeMethods
    extend ActiveSupport::Concern

    included do
      validate :durring_four_other_events
    end

    def day_of_week
      day.present? ? day : 'Friday'
    end
  
    def start_of_game
      start_time.present? ? convert_to_time(start_time.strftime('%I:%M %P')) : convert_to_time('05:00 AM')
    end

    def end_time
      end_time = event_length ? start_time + event_length.minutes : start_time + 30.minutes
    end

    def time_slot
      return '' if event_length.nil? || start_time.nil? || day.nil?
      
      "#{day}: #{start_time.strftime('%l:%M %P')}- #{end_time.strftime('%l:%M %P')}"
    end

    def convert_to_time(time_string)
      Time.strptime(time_string, "%I:%M %P")
    end

    def consistant_time(time)
      return convert_to_time('7:00 AM') unless time
      convert_to_time(time.strftime('%I:%M %P'))
    end

    def event_start_durring_event(time, day_of_week)
      return unless start_time
  
      const_time = consistant_time(time)
      consistant_time(start_time) <= const_time && const_time < consistant_time(end_time) && day_of_week == day
    end

    def other_events_going_count
      gaming_year.events.reduce(0) { |sum, event| event.event_start_durring_event(start_time, day) && event != self ? sum + 1 : sum + 0 }
    end

    # Validate time slot
    def durring_four_other_events
      count = other_events_going_count

      if count > 3
        errors.add(:start_time, 'There are 4 events going at this time, please pick another time')
      end
    end

  end
end