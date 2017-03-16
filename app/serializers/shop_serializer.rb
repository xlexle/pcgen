class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url

  has_many :sources
  # has_many :service_items
end
