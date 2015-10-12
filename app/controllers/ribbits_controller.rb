class RibbitsController < ApplicationController

	def index
		@ribbits = Ribbit.all
		@ribbit = Ribbit.new
	end
	def create
		ribbit = Ribbit.new(ribit_params)
		ribbit.user_id = current_user.id

		flash[:error] = "Sorry Your ribbit is over 140 Chars!" unless ribbit.save
		redirect_to "/ribbits"
	end

private

def ribit_params
	params.require(:ribbit).permit(:content)
end
end
