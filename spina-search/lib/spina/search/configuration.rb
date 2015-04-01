module Spina
  module Search
    include ActiveSupport::Configurable

    config_accessor :name, :description, :plugin_type

    self.name = 'Search'
    self.description = 'Search for Spina'
  end
end