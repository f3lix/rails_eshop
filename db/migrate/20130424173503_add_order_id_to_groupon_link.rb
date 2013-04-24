class AddOrderIdToGrouponLink < ActiveRecord::Migration
  def change
    add_column :groupon_links, :order_id, :integer
  end
end
