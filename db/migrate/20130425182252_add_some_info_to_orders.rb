class AddSomeInfoToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :post_code, :string
  	add_column :orders, :phone_number, :string
  end
end
