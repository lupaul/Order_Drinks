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
end
