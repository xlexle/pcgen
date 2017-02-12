class Service < ApplicationRecord
  validates: :service_type, :price_eur, presence: true
  belongs_to :shop
end
