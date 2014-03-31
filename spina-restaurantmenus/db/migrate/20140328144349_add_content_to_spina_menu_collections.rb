class AddContentToSpinaMenuCollections < ActiveRecord::Migration
  def change
    add_column :spina_menu_collections, :content, :text
  end
end
