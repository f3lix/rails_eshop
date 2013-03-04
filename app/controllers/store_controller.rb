class StoreController < ApplicationController
  layout 'master'
  def index
  	@products = Product.order(:title)
  end
end
