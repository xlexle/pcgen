class Source < ApplicationRecord
  validates :price_eur, presence: true

  belongs_to :product, polymorphic: true
  belongs_to :shop
  validates :product, :shop, presence: true
end
