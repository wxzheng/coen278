class CreateProducts < ActiveRecord::Migration
  def change
    #drop_table :products
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
    change_column :products, :price, :decimal, :precision => 8, :scale => 2
  end
end
