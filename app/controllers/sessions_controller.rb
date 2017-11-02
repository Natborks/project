class SessionsController < ApplicationController

	def new
		@admin = Admin.new
	end

	def create
		  @admin = Admin.find_by_username(params[:session][:username])
		  if @admin && @admin.authenticate(params[:session][:password_digest])
		    session[:admin_id] = @admin.id
		    redirect_to '/users'
		  else
		  	flash.now[:danger] = 'Invalid email/password combination'
		   	render 'new'
		  end 
	end

	def destroy 
		  session[:user_id] = nil 
		  redirect_to '/' 
	end

end
