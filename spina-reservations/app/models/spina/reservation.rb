module Spina
  class Reservation < ActiveRecord::Base
    validates :date, :time, :persons, :phone, :email, :name, presence: true

    def ham!
      update_attributes({spam: false}, without_protection: true)
    end

    def spam!
      update_attributes({spam: true}, without_protection: true)
    end

  end
end