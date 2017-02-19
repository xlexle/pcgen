class SetupAll < ActiveRecord::Migration[5.0]
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
      t.string :colors
      t.string :led_color
      t.references :product, polymorphic: true, index:true

      t.timestamps
    end

    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end

    create_table :sources do |t|
      t.decimal :price_eur, precision: 6, scale: 2
      t.integer :delivery_time_min
      t.integer :delivery_time_max
      t.decimal :delivery_cost_min, precision: 4, scale: 2
      t.string :shop_url
      t.references :product, polymorphic: true, index: true
      t.references :shop, foreign_key: true, index: true

      t.timestamps
    end

    create_table :fans do |t|
      t.string :bearing
      t.integer :min_rpm
      t.integer :max_rpm
      t.integer :starting_voltage
      t.decimal :max_amps, precision: 3, scale: 2
      t.integer :mtbf_hours
      t.integer :cable_length_cm
      t.boolean :has_pwm
      t.boolean :high_pressure
      t.boolean :quiet
      t.integer :thickness_mm

      t.timestamps
    end

    create_table :power_supplies do |t|
      t.string :form_factor
      t.decimal :amps12v, precision: 4, scale: 1
      t.boolean :full_modular
      t.boolean :semi_modular
      t.string :efficiency
      t.string :oem
      t.boolean :semipassive
      t.boolean :has_fan_switch
      t.boolean :quiet
      t.integer :eps_length_cm
      t.integer :pcie8pin_qty
      t.integer :pcie6pin_qty
      t.integer :sata_qty
      t.boolean :has_pretty_cables
      t.references :fan, foreign_key: true, index: true

      t.timestamps
    end
  end
end
