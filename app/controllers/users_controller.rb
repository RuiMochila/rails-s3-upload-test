class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.save
			flash[:success] = "Created with success!"
      		redirect_to root_path
		else
			flash[:error] = "Something went wrong!"
      		redirect_to root_path
		end
	end

	private
	def user_params
    	params.require(:user).permit(:name, :avatar)
  	end

end