class ProductsController < ApplicationController

  def index
    flash[:notice] = "success!"
    flash[:warning] = "waning!"
    flash[:alert] = "alert!!"
  end
end
