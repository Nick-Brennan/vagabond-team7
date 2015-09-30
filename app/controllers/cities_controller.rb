class CitiesController < ApplicationController
  def index
  	@cities = City.all
  end

  def show
  	@user = current_user
  	@post = Post.new
  	if params[:id].to_i == 0
  		str = params[:id]
  		city_name = str.split('-').map(&:capitalize).join(' ')
  		@city = City.find_by_name(city_name)
	  	else
	  	@city = City.find(params[:id])
  	end
  	
  end


end
