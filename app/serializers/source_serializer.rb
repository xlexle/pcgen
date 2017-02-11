class SourceSerializer < ActiveModel::Serializer
  attributes :id, :price_eur, :delivery_time_min, :delivery_time_max, :delivery_cost_min, :shop_url

  belongs_to :product
  belongs_to :shop
end
