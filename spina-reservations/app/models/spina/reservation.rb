module Spina
  class Reservation < Inquiry
    attr_accessor :date, :time, :persons

    validates :date, :time, :persons, :phone, presence: true
    validate :reservation_is_in_the_future

    def message
      "Reservering: #{self.date}, #{self.time} uur, #{self.persons} personen"
    end

    private

    def reservation_is_in_the_future
      if date.present? && Date.parse(date) < Date.today
        errors.add(:date, 'Reserveren kan alleen voor de toekomst')
      end
    end

  end
end