class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :items, through: :cart_items, source: :product

  def checkitem?(proid, productqty)
    sum = productqty.venti_quantity + productqty.grande_quantity
    if sum == 0
      return true
    end
    if items.find_by(id: proid).present?
      return true
    end
  end

  def total_price
    sum = 0
    cart_items.each do |item|
      venti_totalprice = item.venti_quantity * item.product.price_venti
      grande_totalprice = item.grande_quantity * item.product.price_grande
      sum = sum + venti_totalprice + grande_totalprice
    end

    sum
  end

  def clean!
    cart_items.destroy_all
  end
end
