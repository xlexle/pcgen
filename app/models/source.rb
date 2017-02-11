class Source < ApplicationRecord
  belongs_to :product, polymorphic: true
  belongs_to :shop
end
