class PowerSupplySerializer < ActiveModel::Serializer
  attributes :id, :form_factor, :amps_12v, :full_modular, :semi_modular
  attributes :efficiency, :oem, :semipassive, :has_fan_switch, :quiet
  attributes :eps_length_cm, :pcie_8pin_qty, :pcie_6pin_qty, :sata_qty
  attributes :has_pretty_cables

  has_one :property_list
  has_many :product_conflicts
end
