# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# has one property list
# has many power supplies
# has many product conflicts
# has many sources
fan1 = Fan.create(
  bearing: "FDB",
  min_rpm: 500,
  max_rpm: 1300,
  starting_voltage: 5,
  max_amps: "0.32",
  cable_length_cm: 30,
  mtbf_hours: 50000,
  has_pwm: false,
  high_pressure: false,
  quiet: true,
  thickness_mm: 25
)
fan2 = Fan.create(
  bearing: "HDB",
  min_rpm: 300,
  max_rpm: 1300,
  starting_voltage: 7,
  max_amps: "0.20",
  cable_length_cm: 30,
  mtbf_hours: 70000,
  has_pwm: true,
  high_pressure: false,
  quiet: true,
  thickness_mm: 25
)
fan3 = Fan.create(
  bearing: "Sleeve",
  min_rpm: 1000,
  max_rpm: 2000,
  starting_voltage: 5,
  max_amps: "0.54",
  cable_length_cm: 30,
  mtbf_hours: 20000,
  has_pwm: false,
  high_pressure: true,
  quiet: false,
  thickness_mm: 25
)

# has one property list
# belongs to fan
# has many product conflicts
# has many sources
psu1 = PowerSupply.create(
  form_factor: "ATX",
  amps12v: "40.0",
  full_modular: false,
  semi_modular: true,
  efficiency: "80+ Bronze",
  oem: "Nice PSU's Company",
  semipassive: false,
  has_fan_switch: false,
  quiet: false,
  eps_length_cm: 60,
  pcie8pin_qty: 4,
  pcie6pin_qty: 0,
  sata_qty: 6,
  has_pretty_cables: false,
  fan: fan1
)
psu2 = PowerSupply.create(
  form_factor: "ATX",
  amps12v: "40.0",
  full_modular: true,
  semi_modular: false,
  efficiency: "80+ Gold",
  oem: "Nice PSU's Company",
  semipassive: true,
  has_fan_switch: false,
  quiet: false,
  eps_length_cm: 60,
  pcie8pin_qty: 4,
  pcie6pin_qty: 0,
  sata_qty: 6,
  has_pretty_cables: false,
  fan: fan1
)
psu3 = PowerSupply.create(
  form_factor: "ATX",
  amps12v: "60.0",
  full_modular: false,
  semi_modular: true,
  efficiency: "80+ Bronze",
  oem: "Nice PSU's Company",
  semipassive: true,
  has_fan_switch: true,
  quiet: true,
  eps_length_cm: 80,
  pcie8pin_qty: 6,
  pcie6pin_qty: 0,
  sata_qty: 8,
  has_pretty_cables: true,
  fan: fan1
)

# belongs to product
property_list1 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Power Supply Product1",
  sku: "00240ABC1",
  brand: "Products Company",
  prices_url: "http://prices.com/10001",
  specs_url: "http://productscompany.com/00240ABC1",
  description: "Great PSU m8",
  warranty: 5,
  length_mm: 165,
  width_mm: 150,
  height_mm: 90,
  colors: "musta, valkoinen",
  product: psu1
)
property_list2 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Power Supply Product2",
  sku: "00240ABC2",
  brand: "Products Company",
  prices_url: "http://prices.com/10002",
  specs_url: "http://productscompany.com/00240ABC2",
  description: "Great PSU m8",
  warranty: 3,
  length_mm: 165,
  width_mm: 150,
  height_mm: 90,
  colors: "musta, valkoinen",
  product: psu2
)
property_list3 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Power Supply Product3",
  sku: "00240ABC3",
  brand: "Products Company",
  prices_url: "http://prices.com/10003",
  specs_url: "http://productscompany.com/00240ABC3",
  description: "Great PSU m8",
  warranty: 10,
  length_mm: 180,
  width_mm: 150,
  height_mm: 90,
  colors: "musta, valkoinen",
  product: psu3
)
property_list4 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Fan Product1",
  sku: "00240ABC4",
  brand: "Products Company",
  prices_url: "http://prices.com/10004",
  specs_url: "http://productscompany.com/00240ABC4",
  description: "Nice Fan m8",
  warranty: 3,
  width_mm: 120,
  height_mm: 120,
  colors: "valkoinen",
  product: fan1
)
property_list5 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Fan Product2",
  sku: "00240ABC5",
  brand: "Products Company",
  prices_url: "http://prices.com/10005",
  specs_url: "http://productscompany.com/00240ABC5",
  description: "Nice Fan m8",
  warranty: 3,
  width_mm: 120,
  height_mm: 120,
  colors: "musta, valkoinen",
  product: fan2
)
property_list6 = PropertyList.create(
  listed: true,
  quality: 50,
  product_name: "Fan Product3",
  sku: "00240ABC6",
  brand: "Products Company",
  prices_url: "http://prices.com/10006",
  specs_url: "http://productscompany.com/00240ABC6",
  description: "Nice Fan m8",
  warranty: 1,
  width_mm: 120,
  height_mm: 120,
  colors: "musta, valkoinen",
  led_color: "sininen",
  product: fan3
)

# has many product conflicts (exactly 2)
conflict1 = Conflict.create(
  reason: "Wrong size.",
  strict: true
)

conflict2 = Conflict.create(
  reason: "It fits, but still.",
  strict: false
)

# belongs to conflict
# belongs to product
product_conflict1 = ProductConflict.create(
  conflict: conflict1,
  product: psu3
)
product_conflict2 = ProductConflict.create(
  conflict: conflict1,
  product: fan1
)

# has many service_items
# has many sources
shop1 = Shop.create(
  name: "Best PC store",
  description: "Great parts at great prices.",
  url: "https://www.bestpcstore.com/"
)
shop2 = Shop.create(
  name: "Second best PC's Co.",
  description: "Not so good parts, but cheap, and lots of them.",
  url: "https://www.secondbestpcs.com/"
)
shop3 = Shop.create(
  name: "Component Shoppe",
  description: "A small time dealer in PC parts.",
  url: "https://www.componentshoppe.com/"
)

# belongs to shop
service_item1 = ServiceItem.create(
  service_name: "Kasaus",
  description: "Kokoonpanon kasaus ja testaus",
  price_eur: "79.90",
  shop: shop1
)

# belongs to product
# belongs to shop
source1 = Source.create(
  price_eur: "49.90",
  delivery_time_min: 1,
  delivery_time_max: 4,
  delivery_cost_min: "0",
  shop_url: "https://prices.com/tostore?=1product?=1",
  product: psu1,
  shop: shop1
)
source1 = Source.create(
  price_eur: "59.90",
  delivery_time_min: 10,
  delivery_time_max: 20,
  delivery_cost_min: "4.90",
  shop_url: "https://prices.com/tostore?=1product?=2",
  product: psu1,
  shop: shop2
)
