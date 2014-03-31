module Spina
  module Reviews
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Beoordelingen'
    self.controller = 'reviews'
    self.description = 'Beheer de beoordelingen van je klanten'
    self.spina_icon = '4'

    self.plugin_type = 'website_resource'
  end
end