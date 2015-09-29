class UsersController < ApplicationController
	before_action :logged_in?, only: [:show, :index]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		params =  user_params
		city = City.find_by_name(params[:city_name])
		params[:city_id] = city.id
		@user = User.create(params)
		if @user != nil
			login(@user)
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

		updated_attributes = params.require(:user).permit(:first_name, :last_name, :city_name)
		cityName = updated_attributes[:city_name].downcase
		cityName = cityName.split.map(&:capitalize).join(' ')
		city = City.find_by_name(cityName)
		user.update_attribute(:first_name, updated_attributes[:first_name])
		user.update_attribute(:last_name, updated_attributes[:last_name])
		if city != nil
			user.update_attribute(:city_id, city.id)
		end
		p user
		redirect_to "/users/#{user.id}"
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :city_name)
	end

end
