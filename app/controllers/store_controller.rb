class StoreController < ApplicationController
  layout 'master'
  def index
  	@products = Product.order("id DESC")
  end
end
