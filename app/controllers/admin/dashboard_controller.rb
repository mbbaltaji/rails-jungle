
class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "jungle", password: "book"
  
  def show
    @product_count = Product.count
  
    @category_count = Product.group(:category_id).count
  end
end
