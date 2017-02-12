class Shop < ApplicationRecord
  validates :name, :url, presence: true
  
  has_many :sources, dependent: :destroy
  has_many :services, dependent: :destroy
end
