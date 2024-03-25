module Events
  module SeatingMethods
    extend ActiveSupport::Concern

    included do
    end

    def seating_numbers
      "#{seats_available.to_i - seats.count} / #{seats_available}"
    end
  
    def seating_filled
      seats_available == seats.count
    end
  
    def seating_open
      gaming_year.seating_open
    end
  
    def virtual_seats
      seats.map(&:user).filter{ |user| user.attending_virtually }.count
    end
  end
end