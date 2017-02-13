class Shop < ApplicationRecord
  validates :name, :url, presence: true

  has_many :sources, inverse_of: :shop, dependent: :destroy
  has_many :service_items, inverse_of: :shop, dependent: :destroy
end
