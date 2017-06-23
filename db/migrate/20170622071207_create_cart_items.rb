class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :venti_quantity
      t.integer :grande_quantity

      t.timestamps
    end
  end
end
