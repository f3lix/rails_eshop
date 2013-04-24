class AddQuantityToGrouponLinks < ActiveRecord::Migration
  def change
    add_column :groupon_links, :quantity, :integer, default: 1
  end
end
