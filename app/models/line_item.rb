# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  product_id :integer
#  cart_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer          default(1)
#

class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :cart, :quantity
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  def total_price
  	product.price * quantity
  end
end
