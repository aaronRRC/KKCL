class Customer < ActiveRecord::Base
    belongs_to :province
    validates :name, :email, presence: true
    validates :name, uniqueness: true
end
