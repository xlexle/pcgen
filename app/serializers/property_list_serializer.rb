class PropertyListSerializer < ActiveModel::Serializer
  attributes :id, :listed, :quality, :product_name, :sku, :brand, :prices_url
  attributes :specs_url, :description, :warranty, :length_mm, :width_mm
  attributes :height_mm, :primary_colors, :secondary_colors, :led_color

  belongs_to :product
end
