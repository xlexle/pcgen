class Conflict < ApplicationRecord
  validates :reason, :strict, presence: true
  has_many :product_conflicts, dependent: :destroy
end
