class PostsController < ApplicationController

    def new
      @post = Post.new
      @user = current_user
    end

    def create
      user = current_user
      post_params = params.require(:post).permit(:title, :content)
      post_params[:user_id] = user.id
      post = Post.create(post_params)
      redirect_to "/users/#{user.id}"
    end

end
