class AddStockToGroupons < ActiveRecord::Migration
  def up
  	add_column :groupons, :stock, :integer, default: 1
  end

  def down
  	remove_column :groupons, :stock, :integer
  end
end
