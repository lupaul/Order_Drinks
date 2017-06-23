class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def checkout
    @product = Product.find(params[:proid])
    @cartitem = current_cart.cart_items.new


    respond_to do |format|
      format.js
      
    end
  end

  def add_to_cart
    #code
  end
end
