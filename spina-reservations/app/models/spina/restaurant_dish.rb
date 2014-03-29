module Spina
  class RestaurantDish < ActiveRecord::Base
    belongs_to :restaurant_menu

    validates :name, presence: true
  end
end