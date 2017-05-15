module Spina
  module Restaurantmenus
    class Engine < ::Rails::Engine
      isolate_namespace Spina

      initializer "spina_restaurantmenus.register" do
        Spina::Plugin.register do |plugin|
          plugin.name = 'restaurant_menus'
          plugin.namespace = 'restaurant_menus'
        end

        ActiveSupport.on_load :action_view do
          include Spina::Admin::RestaurantMenusHelper
        end
      end
    end
  end
end