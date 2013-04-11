class AddStatusToOrder < ActiveRecord::Migration
  def up
    add_column :orders, :status, :string, :default => "In Process"
  end

  def down
  	remove_column :orders, :status
  end
end
