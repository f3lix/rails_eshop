# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :text
#  email      :string(255)
#  pay_type   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ "Paypal", "Credit Card", "I don't have any money" ]
  STATUS_TYPES = [ "In Process", "Preparing", "Delivering", "Delivered" ]

  attr_accessible :address, :email, :name, :pay_type, :status, :post_code, :phone_number, :comments_buyer, :comments_seller
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  has_many :line_items, dependent: :destroy
  has_many :groupon_links
  belongs_to :user

  def add_line_items_from_cart(cart)
  	cart.line_items.each do |i|
  	  i.cart_id = nil
  	  line_items << i
  	end
  end

  def add_groupon_links_from_cart(cart)
    cart.groupon_links.each do |i|
      i.cart_id = nil
      groupon_links << i
    end
  end
end
