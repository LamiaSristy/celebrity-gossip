class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    @categoties = Category.all
  end

  def new 
    @post = Post.new
    @categoties = Category.all
  end

  def create 
    @post = Post.new(posts_param)
    @post.author_id = current_user.id
    if @post.save
    redirect_to root_path, notice: 'New post was successfully created.'
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def posts_param
    params.require(:post).permit(:name, :description, :image,  category_ids: [])
  end
end
