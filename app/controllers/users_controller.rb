class UsersController < ApplicationController
	before_action :require_user, only: [:index, :show]

	def index
		@user = User.all	
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)

		if @user.save
		      redirect_to '/static_pages/thanks'
   		 else
     		render 'new'
        end
	end


	private
		def user_params
				params.require(:user).permit(:firstname, :lastname, :email,
			:IDnum, :phone, :gender, :project, :terms)
		end
end
