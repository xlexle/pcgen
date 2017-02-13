class ServiceItem < ApplicationRecord
  validates :service_name, :price_eur, presence: true
  belongs_to :shop
  validates :shop, presence: true
end
