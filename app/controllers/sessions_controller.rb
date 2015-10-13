class SessionsController < ApplicationController

  def create
  	user = User.find_by_username params[:username]

  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
      flash[:success] = "You have been logged in"
  		redirect_to current_user
  	else
  		flash[:warning] = "Sorry there is something wrong"
  		redirect_to root_url
  	end

  end

  def destroy
  	session[:user_id] = nil
    flash[:warning] = "You have been logged Out!"
  	redirect_to root_url
  end
end
