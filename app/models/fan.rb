class Fan < ApplicationRecord
  validates :max_rpm, :thickness_mm, presence: true
  validates :has_pwm, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

  has_one :property_list, as: :product, inverse_of: :product, dependent: :destroy
  has_many :power_supplies, inverse_of: :fan
  # has_many :cooler_fan_slots
  # has_many :case_fan_slots
  has_many :product_conflicts, as: :product, inverse_of: :product, dependent: :destroy
  has_many :sources, as: :product, inverse_of: :product, dependent: :destroy
end
