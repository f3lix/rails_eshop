class Groupon < ActiveRecord::Base
  attr_accessible :description, :original_price, :price, :title
end
