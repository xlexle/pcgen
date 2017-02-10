class PowerSupply < ApplicationRecord
  has_one :property_list, as: :product, dependent: :destroy
  has_many :product_conflicts, as: :product, dependent: :destroy
end
