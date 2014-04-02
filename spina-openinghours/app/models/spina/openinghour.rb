module Spina
  class Openinghour < ActiveRecord::Base
    validates :day, presence: true, uniqueness: true

    def openingtimes
      if start_time.present? && end_time.present?
        [start_time, end_time].join(' - ')
      else
        "Gesloten"
      end
    end
  end
end