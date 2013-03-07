class UsersController < ApplicationController
  layout 'starter'
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	# So stupid I wrote this line as "User.new(params[:id])", lol
  	@user = User.new(params[:user])
  	if @user.save
  	  flash[:success] = "Enjoy great shopping experience here!"
  	  redirect_to @user
  	else
  	  render 'new'
  	end
  end

end
