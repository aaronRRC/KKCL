class Customer < ActiveRecord::Base
  belongs_to :province
  has_many :orders
  validates :name, :email, presence: true
  validates :name, uniqueness: true
end
