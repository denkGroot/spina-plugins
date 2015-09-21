class CreateReservations < ActiveRecord::Migration
  def change
    create_table :spina_reservations do |t|
      t.string :name
      t.datetime :date
      t.datetime :time
      t.integer :persons
      t.string :phone
      t.string :email
      t.text :message
      t.string :option
      t.boolean :confirmed
      t.boolean :thank_you_sent
      t.boolean :spam
      t.timestamps
    end
  end
end
