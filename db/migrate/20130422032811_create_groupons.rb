class CreateGroupons < ActiveRecord::Migration
  def change
    create_table :groupons do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :original_price

      t.timestamps
    end
  end
end
