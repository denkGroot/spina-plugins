class AddDescriptionAndPriceToSpinaRestaurantDishes < ActiveRecord::Migration
  def change
    add_column :spina_restaurant_dishes, :description, :text
    add_column :spina_restaurant_dishes, :price, :string
  end
end
