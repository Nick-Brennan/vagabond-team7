class PostsController < ApplicationController

    def new
      @post = Post.new
      @user = current_user
    end

    def create
      user = current_user
      post_params = params.require(:post).permit(:title, :content)
      post_params[:user_id] = user.id
      post_params[:city_id] = params[:id]
      post = Post.create(post_params)
      redirect_to "/cities/#{params[:id]}"
    end

end
