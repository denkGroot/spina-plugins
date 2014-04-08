module Spina
  module Reservations
    include ActiveSupport::Configurable

    config_accessor :name, :description, :plugin_type

    self.name = 'Reserveringen'
    self.description = 'Maak reserveringen aan voor je restaurant'

    self.plugin_type = 'page_part'
  end
end