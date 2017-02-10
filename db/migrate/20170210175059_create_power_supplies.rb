class CreatePowerSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :power_supplies do |t|
      t.string :form_factor
      t.decimal :amps_12v, precision: 4, scale: 1
      t.boolean :full_modular
      t.boolean :semi_modular
      t.string :efficiency
      t.string :oem
      t.boolean :semipassive
      t.boolean :has_fan_switch
      t.boolean :quiet
      t.integer :eps_length_cm
      t.integer :pcie_8pin_qty
      t.integer :pcie_6pin_qty
      t.integer :sata_qty
      t.boolean :has_pretty_cables

      t.timestamps
    end
  end
end
