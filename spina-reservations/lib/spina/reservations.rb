module Spina
  module Reservations
    require 'spina/reservations/engine'

    def self.table_name_prefix
      'spina_'
    end

  end
end
