class UsersController < ApplicationController
  layout 'starter'
  def new
  	
  end

  def show
  	@user = User.find(params[:id])
  end
end
