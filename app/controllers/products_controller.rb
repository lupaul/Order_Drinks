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
    @cartitem = current_cart.cart_items.new(item_params)
    @cartitem.product_id = params[:proid]

    if !current_cart.checkitem?(params[:proid], @cartitem)
      @cartitem.save
      redirect_to root_path
      flash[:notice] = "成功加入訂單！！"
    else
      redirect_to root_path
      flash[:alert] = "出現錯誤! 請重新選取!!"
    end
  end

  private

  def item_params
    params.require(:cart_item).permit(:venti_quantity, :grande_quantity)
  end
end
