class PostsController < ApplicationController

  # ==========ここから追加する==========
  def home
  end
  # ==========ここまで追加する==========

  def show
    @post = Post.find(params[:id])
  end
end
