class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders.order("id DESC")
  end
  def create
    @order = current_user.orders.new
    if @order.save
      @order.build_item_from_cart(current_cart)
      @order.calculate_toal(current_cart)
      current_cart.clean!
      redirect_to order_path(@order)
    else
      render carts_path
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end
end
