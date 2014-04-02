module Spina
  module Openinghours
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Openingstijden'
    self.controller = 'openinghours'
    self.description = 'Stel je openingstijden in'
    self.spina_icon = '6'

    self.plugin_type = 'website_resource'
  end
end