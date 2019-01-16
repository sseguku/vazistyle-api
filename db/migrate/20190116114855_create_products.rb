class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.text :description
      t.string :size
      t.string :event
      t.string :club_status
      t.string :design
      t.decimal :price
      t.string :color
      t.string :stock

      t.timestamps
    end
  end
end
