class AddKindeditorToProducts < ActiveRecord::Migration
  def up
    add_column :products, :kindeditor, :string
  end

  def down
  	remove_column :products, :kindeditor
  end
end
