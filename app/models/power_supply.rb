class PowerSupply < ApplicationRecord
  validates :form_factor, :amps12v, :full_modular, :semi_modular, :efficiency, :oem, :semipassive, :pcie8pin_qty, :pcie6pin_qty, :sata_qty, presence: true

  belongs_to :fan
  has_one :property_list, as: :product, dependent: :destroy
  has_many :product_conflicts, as: :product, dependent: :destroy
  has_many :sources, as: :product, dependent: :destroy
end
