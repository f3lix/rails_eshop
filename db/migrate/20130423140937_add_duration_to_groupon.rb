class AddDurationToGroupon < ActiveRecord::Migration
  def up
  	add_column :groupons, :duration, :integer, default: 1
  end
  def down
  	remove_column :groupons, :duration, :integer
  end
end
