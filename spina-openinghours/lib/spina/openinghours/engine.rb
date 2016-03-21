module Spina
  module Openinghours
    class Engine < ::Rails::Engine

      isolate_namespace Spina::Openinghours

      def self.require_decorators
        [Engine.root].flatten.map { |p| Dir[p.join('app', 'decorators', '**', '*_decorator.rb')]}.flatten.uniq.each do |decorator|
          Rails.configuration.cache_classes ? require(decorator) : load(decorator)
        end
      end
      config.to_prepare &method(:require_decorators).to_proc

      initializer 'register plugin' do
        plugin = ::Spina::Plugin.new({
          name:         'Openinghours',
          namespace:    'openinghours',
        })
        ::Spina::Plugin.register(plugin)
      end
    end
  end
end
