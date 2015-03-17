class KkclController < ApplicationController
  def index
    @products = Product.limit(9)
  end
  
  def cart
  end
  
  def product
    @products = Product.all
  end
  
  def about_us
  end
  
  def contact_us
  end
  
  def belt
    @products = Product.where(type: 'Belt')
  end
  
  def new
    @product = Product.new
    @types = ['Belt', 'Wallet', 'Guitar Strap', 'Dog Collars & Leashes']
  end
  
  def create
    @product = Product.new(product_params)
    if (@product.save)
        redirect_to @product
    else
        render text: @product.errors.inspect
    end
    #create new products
  end
  
  def update
    #edit existing products
  end
  
  private
  def product_params
    params.require(:product).permit(:id, :name, :description, :price, :stock_qty, :type)
  end
end
