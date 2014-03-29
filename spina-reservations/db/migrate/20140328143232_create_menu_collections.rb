class CreateMenuCollections < ActiveRecord::Migration
  def change
    create_table :spina_menu_collections do |t|
      t.timestamps
    end
  end
end
