class Product < ActiveRecord::Base
  has_many :lineitems
  has_many :orders, :through => :lineitems
  validates :name, :price, :stock_qty, presence: true
  
  mount_uploader :images, ProductImageUploader

end

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end