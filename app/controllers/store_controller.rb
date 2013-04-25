class StoreController < ApplicationController
  layout 'master'
  def index
  	@products = Product.order("id DESC").limit(6)
  end
end
