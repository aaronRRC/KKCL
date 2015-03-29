class KkclController < ApplicationController
  def index
    @products = Product.limit(6)
  end
  
  def cart
    @orders = Order.all
  end
  
  def product
    @products = Product.order('id').page(params[:page]).per(5)
  end
  
  def belt
    @products = Product.where(leather_cat: 'Belt').page(params[:page]).per(6)
  end
  
  def gs
    @products = Product.where(leather_cat: 'GS').page(params[:page]).per(6)
  end
  
  def wallet
    @products = Product.where(leather_cat: 'Wallet').page(params[:page]).per(6)
  end
  
  def dcl
    @products = Product.where(leather_cat: 'DCL').page(params[:page]).per(6)
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
    params.require(:product).permit(:name, :description, :price, :stock_qty, :images, :leather_cat)
  end
end
