class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :type, :leather_cat
  end
end
