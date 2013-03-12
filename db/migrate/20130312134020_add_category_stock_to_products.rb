class AddCategoryStockToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :category, :string, default: "default"
  	add_column :products, :stock, :integer, default: 1
  end
end
