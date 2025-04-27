module EventsHelper
  def tables
    ['Table 1 Basement', 'Table 2 Basement', 'Table 3 Basement', 'Basement Bar Space']
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
      ['4 hours', 240],
      ['4.5 hours', 270],
      ['5 hours', 300],
      ['5.5 hours', 330],
      ['6 hours', 360]
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
    (@gaming_year.start_date...@gaming_year.end_date + 1.day).map { |date| date.strftime('%A') }.uniq
  end

  def game_types
    ['Board Game', 'Card Game', 'Role Playing Game', 'Other']
  end
end
