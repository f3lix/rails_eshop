class SessionsController < ApplicationController
  layout 'starter'

  def new

  end

  def create
  	# render 'new'
  	user = User.find_by_email(params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  	  # sucess
  	  sign_in user
  	  redirect_back_or user
  	else
  	  # failed
  	  flash.now[:error] = "Invalid username or password."
  	  render 'new'
  	end
  end

  def destroy
  	sign_out
  	redirect_to store_path
  end

end
