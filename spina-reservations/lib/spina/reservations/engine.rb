module Spina
  module Reservations
    class Engine < ::Rails::Engine
      isolate_namespace Spina

      def self.require_decorators
        [Engine.root].flatten.map { |p| Dir[p.join('app', 'decorators', '**', '*_decorator.rb')]}.flatten.uniq.each do |decorator|
          Rails.configuration.cache_classes ? require(decorator) : load(decorator)
        end
      end
      config.to_prepare &method(:require_decorators).to_proc

      initializer "register plugin" do
        Spina::Plugin.register do |plugin|
          plugin.name = 'Reservations'
          plugin.namespace = 'reservations'
        end
      end
    end
  end
end