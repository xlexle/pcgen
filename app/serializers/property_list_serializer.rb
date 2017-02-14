class PropertyListSerializer < ActiveModel::Serializer
  attributes :id, :listed, :quality, :product_name, :sku, :brand, :prices_url, :specs_url
  attributes :description, :warranty, :length_mm, :width_mm, :height_mm, :colors, :led_color

  belongs_to :product
end
