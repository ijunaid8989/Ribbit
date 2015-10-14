class RelationshipsController < ApplicationController

	def create
		relationship = Relationship.new(rel_params)
		relationship.follower = current_user

		flash[:warning] = "Sorry there is something wrong" unless relationship.save
		redirect_to relationship.followed

	end

	def destroy
		relationship = Relationship.find(params[:id])
		user = relationship.followed
		relationship.destroy
		redirect_to user
	end

private

def rel_params
	params.require(:relationship).permit(:followed_id)
end

end
