class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_venti
      t.integer :price_grande
      t.timestamps
    end
  end
end
