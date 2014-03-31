module Spina
  class RestaurantMenu < ActiveRecord::Base
    belongs_to :restaurant_menu_collection
    has_many :restaurant_dishes

    accepts_nested_attributes_for :restaurant_dishes, allow_destroy: true

    validates :name, presence: true
  end
end