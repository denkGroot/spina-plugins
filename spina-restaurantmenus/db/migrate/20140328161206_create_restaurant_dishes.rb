class CreateRestaurantDishes < ActiveRecord::Migration
  def change
    create_table :spina_restaurant_dishes do |t|
      t.integer :restaurant_menu_id
      t.string :name
      t.timestamps
    end
  end
end
