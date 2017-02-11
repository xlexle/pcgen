class Shop < ApplicationRecord
  has_many :sources, dependent: :destroy
  has_many :services, dependent: :destroy
end
