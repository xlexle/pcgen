class FanSerializer < ActiveModel::Serializer
  attributes :id, :bearing, :min_rpm, :max_rpm, :starting_voltage, :max_amps, :cable_length_cm
  attributes :mtbf_hours, :has_pwm, :high_pressure, :quiet, :thickness_mm

  has_one :property_list
  has_many :power_supplies
  # has_many :cooler_fan_slots
  # has_many :case_fan_slots
  has_many :product_conflicts
  has_many :sources
end
