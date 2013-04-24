class CreateGrouponLinks < ActiveRecord::Migration
  def change
    create_table :groupon_links do |t|
      t.integer :groupon_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
