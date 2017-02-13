class Fan < ApplicationRecord
  validates :max_rpm, :thickness_mm, presence: true

  has_one :property_list, as: :product, dependent: :destroy
  has_many :power_supplies
  # has_many :cooler_fan_slots
  # has_many :case_fan_slots
  has_many :product_conflicts, as: :product, dependent: :destroy
  has_many :sources, as: :product, dependent: :destroy
end
