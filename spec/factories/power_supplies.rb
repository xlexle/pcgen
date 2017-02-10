FactoryGirl.define do
  factory :power_supply do
    form_factor "ATX"
    amps_12v "40.0"
    full_modular false
    semi_modular true
    efficiency "80+ Bronze"
    oem "Channel Well Tech"
    semipassive false
    has_fan_switch false
    quiet false
    eps_length_cm 60
    pcie_8pin_qty 4
    pcie_6pin_qty 0
    sata_qty 6
    has_pretty_cables false
  end
end
