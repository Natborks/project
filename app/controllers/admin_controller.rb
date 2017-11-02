class AdminController < ApplicationController

	def create
		session[:user_id] = @user.id
	end
end
