# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_list = [
  ["台灣蜜香紅茶", 30, 35],
  ["茉莉綠茶", 30, 35],
  ["南投菁茶", 35, 40],
  ["蜜香紅奶茶", 35, 40],
  ["茉莉綠奶茶", 35, 40],
  ["珍珠奶茶", 40, 45],
  ["珍珠奶綠", 40, 45],
  ["珍珠紅茶拿鐵", 50, 60],
  ["珍珠綠茶拿鐵", 50, 60],
  ["紅茶拿鐵", 50, 60],
  ["綠茶拿鐵", 50, 60]
]

product_list.each do |name, price_grande, price_venti|
  Product.create( name: name, price_venti: price_venti, price_grande: price_grande)
end
