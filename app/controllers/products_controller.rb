class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    #@product instance variable will be available in the show.html.erb view
    @product = Product.find params[:id]
  end
end
