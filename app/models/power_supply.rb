class PowerSupply < ApplicationRecord
  belongs_to :fan
  has_one :property_list, as: :product, dependent: :destroy
  has_many :product_conflicts, as: :product, dependent: :destroy
  has_many :sources, as: :product, dependent: :destroy
end
