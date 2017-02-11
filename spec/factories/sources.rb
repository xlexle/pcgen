FactoryGirl.define do
  factory :source do
    price_eur "49.90"
    delivery_time_min 1
    delivery_time_max 4
    delivery_cost_min "0"
    shop_url "https://hinta.fi/kauppaan?php=productid1"
    product nil
    shop nil
  end
end
