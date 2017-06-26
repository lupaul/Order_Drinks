require 'rails_helper'

RSpec.describe Product, type: :model do

  it "is valid with valid attributes" do
    product = Product.new(name: "Anything", price_venti: 35, price_grande: 30)

    expect(product).to be_valid
  end

  it "is valid without name" do
    product = Product.new(name: nil, price_venti: 35, price_grande: 30)
    product.valid?
    expect(product.errors[:name]).to include("can't be blank")
  end

  it "is valid without price_venti" do
    product = Product.new(name: "Greentea", price_venti: nil, price_grande: 30)
    product.valid?
    expect(product.errors[:price_venti]).to include("can't be blank")
  end

  it "is valid without price_grande" do
    product = Product.new(name: "Blacktea", price_venti: 35, price_grande: nil)
    product.valid?
    expect(product.errors[:price_grande]).to include("can't be blank")
  end

end
