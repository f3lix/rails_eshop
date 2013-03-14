class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ "Paypal", "Credit Card", "I don't have any money" ]

  attr_accessible :address, :email, :name, :pay_type
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
  	cart.line_items.each do |i|
  	  i.cart_id = nil
  	  line_items << i
  	end
  end
end
