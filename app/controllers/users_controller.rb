class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.id != nil
			redirect_to "/users/#{@user.id}"
		else
			redirect_to sign_in_path
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end

end
