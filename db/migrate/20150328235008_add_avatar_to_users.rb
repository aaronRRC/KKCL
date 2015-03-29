class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :products, :image, :product_image
  end
end
