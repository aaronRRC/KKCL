class KkclController < ApplicationController
  def index
    @products = Product.limit(9)
  end
  
  def cart
    @orders = Order.all
  end
  
  def product
    @products = Product.all
  end
  
  def about_us
  end
  
  def contact_us
  end
  
  def new
    @product = Product.new
  end
  
  def show
    @product = Product.find(params[:id])
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
    params.require(:product).permit(:name, :description, :price, :stock_qty)
  end
end
