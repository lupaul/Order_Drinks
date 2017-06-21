class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product, only: [ :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit

  end

  def update

    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price_venti, :price_grande)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
