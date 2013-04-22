class Groupon < ActiveRecord::Base
  attr_accessible :description, :original_price, :price, :title, :stock, :created_at
end
