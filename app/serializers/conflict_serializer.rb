class ConflictSerializer < ActiveModel::Serializer
  attributes :id, :reason, :strict

  has_many :product_conflicts
end
