module Spina
  class Openinghour < ActiveRecord::Base
    validate :day_must_be_present_and_unique

    def openingtimes
      if start_time.present? && end_time.present?
        [start_time, end_time].join(' - ')
      else
        "Gesloten"
      end
    end

    private

    def day_must_be_present_and_unique
      if day.blank? || Openinghour.where(day: day).where.not(id: id).exists?
        errors.add(:day, 'moet uniek zijn')
      end
    end
  end
end