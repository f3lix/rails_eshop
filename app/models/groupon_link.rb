class GrouponLink < ActiveRecord::Base
  attr_accessible :cart_id, :groupon_id, :groupon, :cart, :quantity
  belongs_to :order
  belongs_to :groupon
  belongs_to :cart

  def total_price
  	groupon.price * quantity
  end
end
