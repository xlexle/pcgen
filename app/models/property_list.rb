class PropertyList < ApplicationRecord
  validates :quality, presence: true
  validates :product_name, :sku, :brand, presence: true, format: { with: /\A[A-Za-z0-9_\-. ]+\z/, message: "Sallitut merkit: A-Z, 0-9, _-." }

  validates :listed, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

  belongs_to :product, polymorphic: true
  validates :product, presence: true
end
