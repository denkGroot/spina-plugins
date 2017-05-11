module Spina
  module Restaurantmenus
    class Engine < ::Rails::Engine
      isolate_namespace Spina

      initializer "register plugin" do
        Spina::Plugin.register do |plugin|
          plugin.name = 'restaurant_menus'
          plugin.namespace = 'restaurant_menus'
        end
      end
    end
  end
end