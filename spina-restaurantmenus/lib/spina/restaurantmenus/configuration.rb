module Spina
  module Restaurantmenus
    include ActiveSupport::Configurable

    config_accessor :name, :description, :plugin_type

    self.name = 'Restaurant menu'
    self.description = 'Maak menukaarten aan voor je restaurant'

    self.plugin_type = 'page_part'
  end
end