class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")  # すべてのレコードを@postsに代入
  end

  def create
    Post.create(content: params[:content])
  end
end
