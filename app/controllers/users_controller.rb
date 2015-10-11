class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:name])

		if @user.save
			rediect_to @user , notice: "Helllo Weclome to Ribbit"
		else
			render 'new'
		end
	end



private

	def user_params
		
	end

end
