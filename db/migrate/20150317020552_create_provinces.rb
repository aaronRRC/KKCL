class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces, :id => false do |t|
      t.integer :id, primary: true
      t.string :name
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst

      t.timestamps
    end
  end
end
