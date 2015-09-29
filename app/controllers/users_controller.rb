class UsersController < ApplicationController
	before_action :logged_in?, only: [:show, :index]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user != nil
			redirect_to "/users/#{@user.id}"
		else
			redirect_to "/sessions/new"
		end
	end

	def show
		@user = User.find(params[:id])
		if current_user == @user
			render :show
		else
			redirect_to "/sessions/new"
		end
	end

	def edit
    	@user = User.find(params[:id])
  	end

	def update
		user = User.find(params[:id])

		updated_attributes = params.require(:user).permit(:first_name, :last_name)

		user.update_attribute(:first_name, updated_attributes[:first_name])
		user.update_attribute(:last_name, updated_attributes[:last_name])
		redirect_to "/users/#{user.id}"
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end

end
