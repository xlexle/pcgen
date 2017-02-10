# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

psu1 = PowerSupply.create(
  form_factor: "ATX",
  amps_12v: 40.0,
  full_modular: false,
  semi_modular: true,
  efficiency: "80+ Bronze",
  oem: "Channel Well Tech",
  semipassive: false,
  has_fan_switch: false,
  quiet: false,
  eps_length_cm: 60,
  pcie_8pin_qty: 4,
  pcie_6pin_qty: 0,
  sata_qty: 6,
  has_pretty_cables: false
)

psu2 = PowerSupply.create(
  form_factor: "ATX",
  amps_12v: 40.0,
  full_modular: true,
  semi_modular: false,
  efficiency: "80+ Gold",
  oem: "Channel Well Tech",
  semipassive: true,
  has_fan_switch: false,
  quiet: false,
  eps_length_cm: 60,
  pcie_8pin_qty: 4,
  pcie_6pin_qty: 0,
  sata_qty: 6,
  has_pretty_cables: false
)

psu3 = PowerSupply.create(
  form_factor: "ATX",
  amps_12v: 60.0,
  full_modular: false,
  semi_modular: true,
  efficiency: "80+ Bronze",
  oem: "Channel Well Tech",
  semipassive: true,
  has_fan_switch: true,
  quiet: true,
  eps_length_cm: 80,
  pcie_8pin_qty: 6,
  pcie_6pin_qty: 0,
  sata_qty: 8,
  has_pretty_cables: true
)

property_list1 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Vengeance 550M",
  sku: "00240ABC1",
  brand: "Corsair",
  prices_url: "hinta.fi/10001",
  specs_url: "corsair.com/00240ABC1",
  description: "Great PSU m8",
  warranty: 5,
  length_mm: 165,
  width_mm: 150,
  height_mm: 90,
  primary_colors: "Black",
  secondary_colors: "Black, White",
  product: psu1
)

property_list2 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "CS550M",
  sku: "00240ABC2",
  brand: "Corsair",
  prices_url: "hinta.fi/10002",
  specs_url: "corsair.com/00240ABC2",
  description: "Great PSU m8",
  warranty: 3,
  length_mm: 165,
  width_mm: 150,
  height_mm: 90,
  primary_colors: "Black",
  secondary_colors: "Black, White",
  product: psu2
)

property_list3 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "RM750x",
  sku: "00240ABC3",
  brand: "Corsair",
  prices_url: "hinta.fi/10003",
  specs_url: "corsair.com/00240ABC3",
  description: "Great PSU m8",
  warranty: 10,
  length_mm: 180,
  width_mm: 150,
  height_mm: 90,
  primary_colors: "Black",
  secondary_colors: "Black, White",
  product: psu3
)

conflict1 = Conflict.create(
  reason: "Just can't even.",
  strict: true
)

product_conflict1 = ProductConflict.create(
  conflict: conflict1,
  product: psu3
)

product_conflict2 = ProductConflict.create(
  conflict: conflict1,
  product: psu2
)
