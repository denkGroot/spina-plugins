module Spina
  module Search
    class Engine < ::Rails::Engine

      isolate_namespace Spina::Search

      def self.require_decorators
        [Engine.root].flatten.map { |p| Dir[p.join('app', 'decorators', '**', '*_decorator.rb')]}.flatten.uniq.each do |decorator|
          Rails.configuration.cache_classes ? require(decorator) : load(decorator)
        end
      end
      config.to_prepare &method(:require_decorators).to_proc

      initializer 'spina.plugin.register.search' do
        ::Spina::Plugin.register do |plugin|
          plugin.name       = 'Search'
          plugin.namespace  = 'search'
        end
      end
    end
  end
end
