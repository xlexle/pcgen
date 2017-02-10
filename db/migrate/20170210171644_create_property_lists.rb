class CreatePropertyLists < ActiveRecord::Migration[5.0]
  def change
    create_table :property_lists do |t|
      t.boolean :listed
      t.integer :quality
      t.string :product_name
      t.string :sku
      t.string :brand
      t.string :prices_url
      t.string :specs_url
      t.text :description
      t.integer :warranty
      t.integer :length_mm
      t.integer :width_mm
      t.integer :height_mm
      t.string :primary_colors
      t.string :secondary_colors
      t.string :led_color
      t.references :product, polymorphic: true, index:true

      t.timestamps
    end
  end
end
