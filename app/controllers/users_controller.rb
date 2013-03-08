class UsersController < ApplicationController
  layout 'starter'

  before_filter :signed_in_user, only: [:edit, :update]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: [:index, :destroy]

  def index
    # @users = User.all
    # if current_user.admin?
    @users = User.paginate(page: params[:page])
    #if @user
    #  redirect_to @user
    # else
    #  redirect_to current_user
    # end
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

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(params[:user])
      #
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

  private

  def signed_in_user
    unless !current_user.nil?
      save_location
      redirect_to signin_path, notice: "Please signin."
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to store_path unless current_user?(@user)
  end

  def admin_user
    redirect_to store_path unless current_user.admin?
  end
end