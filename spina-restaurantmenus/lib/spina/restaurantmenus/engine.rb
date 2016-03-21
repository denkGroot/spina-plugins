module Spina
  module Restaurantmenus
    class Engine < ::Rails::Engine

      isolate_namespace Spina::Restaurantmenus

      initializer 'register plugin' do
        plugin = ::Spina::Plugin.new({
          name:         'Restaurant menu',
          namespace:    'Restaurantmenus',
        })
        ::Spina::Plugin.register(plugin)
      end

    end
  end
end
