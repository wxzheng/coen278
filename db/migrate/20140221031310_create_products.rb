class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
    change_column :products, :price, :decimal, :precision => 4, :scale => 6
  end
end
