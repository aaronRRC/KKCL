class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, :id => false do |t|
      t.integer :id, primary: true
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock_qty
      t.string :type

      t.timestamps
    end
  end
end
