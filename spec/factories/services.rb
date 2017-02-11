FactoryGirl.define do
  factory :service do
    service_type "Kasaus"
    description "Kokoonpanon kasaus ja testaus"
    price_eur "79.90"
    shop nil
  end
end
