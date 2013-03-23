class Category < ActiveRecord::Base
  attr_accessible :description, :title, :id
  has_many :products
end
