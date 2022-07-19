require 'rails_helper'
RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    it "is valid" do
      @product = Product.new
      @cat = Category.new
      @cat.name = 'Test'
      @product.name = 'Test' 
      @product.price_cents = 32123
      @product.quantity = 4
      @product.category = @cat
      expect(@product.valid?).to be true
    end

    it "name presence" do
      @product = Product.new
      @product.name = nil 
      @product.valid?
      expect(@product.errors[:name]).to  include("can't be blank")
  
      @product.name = 'test' 
      @product.valid? 
      expect(@product.errors[:name]).not_to  include("can't be blank")
    end

    it "price_cents presence" do
      @product = Product.new
      @product.price_cents = nil 
      @product.valid?
      expect(@product.errors[:price_cents]).to  include("is not a number")
  
      @product.price_cents = 32123 
      @product.valid? 
      expect(@product.errors[:price_cents]).not_to  include("can't be blank")
    end


  end
end    