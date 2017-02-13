class PropertyList < ApplicationRecord
  validates :listed, :quality, :product_name, :sku, :brand, presence: true
  belongs_to :product, polymorphic: true
end
