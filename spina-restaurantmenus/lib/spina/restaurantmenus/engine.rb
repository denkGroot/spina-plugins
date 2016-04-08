module Spina
  module Restaurantmenus
    class Engine < ::Rails::Engine

      isolate_namespace Spina::Restaurantmenus

      initializer 'spina.plugin.register.restaurantmenus' do
        ::Spina::Plugin.register do |plugin|
          plugin.name        = 'Restaurant menu'
          plugin.namespace   = 'restaurantmenus'
        end
      end

    end
  end
end
