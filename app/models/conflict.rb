class Conflict < ApplicationRecord
  validates :reason, presence: true
  validates :strict, inclusion: { in: [true, false] }, exclusion: { in: [nil] }

  # has_many :product_conflicts, inverse_of: :conflict, dependent: :destroy
  has_many :product_conflicts, inverse_of: :conflict
end
