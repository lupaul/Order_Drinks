class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :venti_quantity
      t.integer :grande_quantity
      t.integer :bonus_venti, default: 0
      t.integer :bonus_grande, default: 0
      t.timestamps
    end
  end
end
