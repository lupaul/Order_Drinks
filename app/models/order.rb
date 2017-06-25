class Order < ApplicationRecord
  belong_to :user, optional: true
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items, source: :product
end
