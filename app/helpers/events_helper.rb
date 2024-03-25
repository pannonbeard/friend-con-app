module EventsHelper
  def tables
    ['Table 1 Basement', 'Table 2 Basement', 'Table Living Room (Blend capable)', 'Table Spare Room (Blend capable)', 'Table Garage (Dranking Games)', 'Basement Bar Space']
  end

  def time_slots 
    ['9:00am - 12:30pm', '1:30pm - 5:00pm', '6:00pm - 9:30pm']
  end

  def time_frames
    [
      ['30 min', 30], 
      ['45 min', 45], 
      ['1 hour', 60], 
      ['1.5 hours', 90], 
      ['2 hours', 120], 
      ['3 hours', 180], 
      ['3.5 hours', 210], 
      ['4 hours', 240]
    ]
  end

  def times_list
    list_of_times = []
    start_time = Time.strptime('9:00AM', "%I:%M%P")
    end_time = Time.strptime('10:00PM', "%I:%M%P")

    while start_time < end_time
      list_of_times << start_time
      start_time += 15.minutes
    end

    list_of_times
  end

  def day_time_slots
    slots = []
    days.each do |day|
      time_slots.each do |slot|
        next if day == 'Friday' && (slot.include?('9:00am') || slot.include?('5:00pm'))

        slots << "#{day}: #{slot}"
      end
    end
    slots
  end

  def days
    ['Friday', 'Saturday', 'Sunday']
  end

  def game_types
    ['Board Game', 'Card Game', 'Role Playing Game']
  end
end
