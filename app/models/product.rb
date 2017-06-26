class Product < ApplicationRecord
  validates :name, presence: true
  validates :price_venti, presence: true
  validates :price_grande, presence: true
end
