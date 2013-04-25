class AddSomeInfoToUser < ActiveRecord::Migration
  def change
  	add_column :users, :gender, :string
  	add_column :users, :age, :integer
  	add_column :users, :bio, :string
  	add_column :users, :phone_number, :string
  	add_column :users, :address, :string
  	add_column :users, :post_code, :string
  end
end
