class KkclController < ApplicationController
  def index
    @products = Product.order("RANDOM()").limit(6)
    @newone = Product.order("RANDOM()").first
    @find_product = Product.search(params[:search])
  end
  
  def cart
    @orders = Order.all
    @find_product = Product.search(params[:search])
  end
  
  def product
    @products = Product.order('id').page(params[:page]).per(5)
    @find_product = Product.search(params[:search])
  end
  
  def belt
    @products = Product.where(leather_cat: 'Belt').page(params[:page]).per(6)
    @find_product = Product.search(params[:search])
  end
  
  def gs
    @products = Product.where(leather_cat: 'GS').page(params[:page]).per(6)
    @find_product = Product.search(params[:search])
  end
  
  def wallet
    @products = Product.where(leather_cat: 'Wallet').page(params[:page]).per(6)
    @find_product = Product.search(params[:search])
  end
  
  def dcl
    @products = Product.where(leather_cat: 'DCL').page(params[:page]).per(6)
    @find_product = Product.search(params[:search])
  end
  
  def about_us
    @find_product = Product.search(params[:search])
  end
  
  def contact_us
    @find_product = Product.search(params[:search])
  end
  
  def new
    @product = Product.new
  end
  
  def show
    @product = Product.find(params[:id])
    @find_product = Product.search(params[:search])
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
  
  def search
    @find_product = Product.search(params[:search])
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_qty, :images, :leather_cat)
  end
end
