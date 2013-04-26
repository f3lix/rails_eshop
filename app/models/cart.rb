# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, dependent: :destroy
  has_many :groupon_links

  def add_product(product_id)
  	current_item = line_items.find_by_product_id(product_id)
    product = Product.find_by_id(product_id)
    product.stock -= 1
  	if current_item
  	  current_item.quantity += 1
  	else
  	  current_item = line_items.build(product_id: product_id)
  	end
  	current_item
  end

  def add_groupon(groupon_id)
    current_item = groupon_links.find_by_groupon_id(groupon_id)
    groupon = Groupon.find_by_id(groupon_id)
    groupon.stock -= 1
    if current_item
      current_item.quantity += 1
    else
      current_item = groupon_links.build(groupon_id: groupon_id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price } +  groupon_links.to_a.sum { |item| item.total_price }
  end
end
