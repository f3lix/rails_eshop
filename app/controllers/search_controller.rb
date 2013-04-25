class SearchController < ApplicationController
  layout 'starter'

  def index
  	@search = Product.search(params[:search])
    @products = @search.all
  end
end
