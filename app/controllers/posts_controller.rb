class PostsController < ApplicationController

    def new
      @article = Article.new
      @user = current_user
    end

    def create
      user = current_user
      post_params = post.require(:post).permit(:title, :content)
      post_params[:user_id] = user.id
      post = Post.create(post_params)
      redirect_to "/users/#{user.id}"
    end

end
