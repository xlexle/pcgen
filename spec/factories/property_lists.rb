FactoryGirl.define do
  factory :property_list do
    listed true
    quality 50
    product_name "Vengeance 550W"
    sku "00240ABC"
    brand "Corsair"
    prices_url "hinta.fi/10001"
    specs_url "corsair.com/00240ABC"
    description "Great PSU m8"
    warranty 5
    length_mm 165
    width_mm 150
    height_mm 90
    primary_colors "Black"
    secondary_colors "Black, White"
    product nil
  end
end
