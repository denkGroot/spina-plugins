module Spina
  module Reservations
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Reserveringen'
    self.controller = 'reservations'
    self.description = 'Beheer reserveringen voor je restaurant'
    self.spina_icon = 'mail-outline'

    self.plugin_type = 'website_resource'
  end
end