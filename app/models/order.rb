class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items, source: :product

  def build_item_from_cart(cart)
    bonus = ( Date.today.wday == 3 )? 1 : 0
    cart.cart_items.each do |cart_item|
      item = order_items.build
      item.product = cart_item.product
      item.venti_quantity = cart_item.venti_quantity
      item.grande_quantity = cart_item.grande_quantity
      item.bonus_venti = item.venti_quantity * bonus
      item.bonus_grande = item.grande_quantity * bonus
      item.save
    end
  end

  def calculate_toal(cart)
    self.total_price = cart.total_price
    self.save
  end
end
