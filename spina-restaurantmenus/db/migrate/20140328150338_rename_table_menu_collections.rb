class RenameTableMenuCollections < ActiveRecord::Migration
  def change
    rename_table :spina_menu_collections, :spina_restaurant_menu_collections
  end
end
