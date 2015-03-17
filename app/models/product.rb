class Product < ActiveRecord::Base
    validates :name, :price, :stock_qty, :type, presence: true
end
