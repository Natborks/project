class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		
		render 'static_pages/thanks'
	end


	private
	def user_params
			params.require(:user).permit(:firstname, :lastname, :email,
		:IDnum, :phone)
	end

end
