class ServiceItemSerializer < ActiveModel::Serializer
  attributes :id, :service_name, :description, :price_eur

  belongs_to :shop
end
