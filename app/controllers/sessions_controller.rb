class SessionsController < ApplicationController

  def create
  	user = User.find_by_username params[:username]

  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_url , notice: "Hello!! you have been logged in!!"
  	else
  		flash[:error] = "Sorry there is something wrong"
  		redirect_to root_url
  	end

  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url , notice: "You have been logged out buddy!!"
  end
end
