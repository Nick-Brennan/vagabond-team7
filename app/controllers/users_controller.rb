class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.find(user_params)
		redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
	end

end
