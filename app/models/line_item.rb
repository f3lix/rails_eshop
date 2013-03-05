class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :cart, :quantity
  belongs_to :product
  belongs_to :cart
end
