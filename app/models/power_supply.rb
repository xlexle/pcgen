class PowerSupply < ApplicationRecord
  validates :form_factor, :amps12v, :efficiency, :oem, :pcie8pin_qty, :pcie6pin_qty, :sata_qty, presence: true
  validates :full_modular, :semi_modular, :semipassive, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

  # belongs_to :fan
  # validates :fan, presence: true

  has_one :property_list, as: :product, inverse_of: :product, dependent: :destroy
  # has_many :product_conflicts, as: :product, inverse_of: :product
  has_many :sources, as: :product, inverse_of: :product, dependent: :destroy
end
