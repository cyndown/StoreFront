class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :artist
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :quantity
      t.integer :category_id
      t.integer :photo_id
      t.integer :discount_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
