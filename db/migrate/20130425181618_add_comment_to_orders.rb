class AddCommentToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :comments_buyer, :string
  	add_column :orders, :comments_seller, :string
  end
end
