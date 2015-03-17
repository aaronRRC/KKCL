class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders, :id => false do |t|
      t.integer :id, primary: true
      t.string :status
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.decimal :hst_rate
      t.integer :customer_id

      t.timestamps
    end
  end
end
