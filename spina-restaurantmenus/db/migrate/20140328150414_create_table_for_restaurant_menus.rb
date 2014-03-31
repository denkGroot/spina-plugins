class CreateTableForRestaurantMenus < ActiveRecord::Migration
  def change
    create_table :spina_restaurant_menus do |t|
      t.integer :restaurant_menu_collection_id
      t.string :name
      t.timestamps
    end
  end
end
