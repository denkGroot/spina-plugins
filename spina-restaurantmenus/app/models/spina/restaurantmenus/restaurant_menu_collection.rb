module Spina
  module Restaurantmenus
    class RestaurantMenuCollection < ActiveRecord::Base

      has_many :page_parts, as: :page_partable
      has_many :restaurant_menus

      accepts_nested_attributes_for :restaurant_menus, allow_destroy: true

      def content
        self.restaurant_menus
      end

    end
  end
end
