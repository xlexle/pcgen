class ProductConflict < ApplicationRecord
  belongs_to :product, polymorphic: true
  # belongs_to :conflict, dependent: :destroy
  belongs_to :conflict
  validates :product, :conflict, presence: true
end
