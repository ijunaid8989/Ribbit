class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:success]= "Congrats! Welcome to ribbit!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@ribbit = Ribbit.new
	end


private

	def user_params
		params.require(:user).permit(:email,:username,:name,:password,:password_confrimation);
	end

end
