class PostsController < ApplicationController

 def home

 end

 def index
  @post = Post.all
 end

 def new
  @post = Post.new
 end

 def create
  @post = Post.new(post_params)
  if  @post.save
    redirect_to posts_path
    flash[:notice] = "投稿が完了しました"
  else
    render "new"
    flash[:alert] = "投稿が失敗しました"
  end
 end

  private
  def post_params
    params.require(:post).permit(:caption,:image,:description).merge(user_id: current_user.id)
  end
end
