class UsersController < ApplicationController


	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			flash[:success]= "Congrats! Welcome to ribbit!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@ribbit = Ribbit.new
		@relationship = Relationship.where(
				follower_id: current_user.id,
				followed_id: @user.id
			).first_or_initialize if current_user
	end

	def buddies
		if current_user
			@ribbit = Ribbit.new
			buddies_id = current_user.followeds.map(&:id)
			@ribbits = Ribbit.where(user_id: buddies_id)	
		end
	end
	def mentions
		@ribbit = Ribbit.new
		@ribbits = Ribbit.where("content LIKE ?" ,"%#{current_user.username}%" )
	end

private

	def user_params
		params.require(:user).permit(:email,:username,:name,:password,:password_confrimation);
	end

end
