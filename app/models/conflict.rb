class Conflict < ApplicationRecord
  has_many :product_conflicts, dependent: :destroy
end
