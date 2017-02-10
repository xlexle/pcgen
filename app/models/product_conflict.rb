class ProductConflict < ApplicationRecord
  belongs_to :product, polymorphic: true
  belongs_to :conflict
end
