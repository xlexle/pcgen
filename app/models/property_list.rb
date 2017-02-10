class PropertyList < ApplicationRecord
  belongs_to :product, polymorphic: true
end
