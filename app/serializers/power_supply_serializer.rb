class PowerSupplySerializer < ActiveModel::Serializer
  attributes :id, :form_factor, :amps12v, :full_modular, :semi_modular
  attributes :efficiency, :oem, :semipassive, :has_fan_switch, :quiet
  attributes :eps_length_cm, :pcie8pin_qty, :pcie6pin_qty, :sata_qty
  attributes :has_pretty_cables

  # has_one :property_list
  # belongs_to :fan
  # has_many :product_conflicts
  has_many :sources
end
