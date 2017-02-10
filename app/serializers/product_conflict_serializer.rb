class ProductConflictSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :product
  belongs_to :conflict
end
