class Product < ActiveRecord::Base
  has_many :lineitems
  has_many :orders, :through => :lineitems
  validates :name, :price, stock_qty, presence: true
end
