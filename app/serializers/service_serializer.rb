class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :service_type, :description, :price_eur

  belongs_to :shop
end
