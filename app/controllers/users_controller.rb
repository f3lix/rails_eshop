class UsersController < ApplicationController
  layout 'starter'

  def index
    @user = current_user
    if @user
      redirect_to @user
    end
  end

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
      sign_in @user
  	  flash[:success] = "Enjoy great shopping experience here!"
  	  redirect_to @user
  	else
  	  render 'new'
  	end
  end

end
