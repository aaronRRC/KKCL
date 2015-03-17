class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems, :id => false do |t|
      t.integer :id, primary: true
      t.integer :qty
      t.decimal :price
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
