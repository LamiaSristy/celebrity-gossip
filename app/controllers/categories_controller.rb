class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def new 
    @category = Category.new
  end
  
  def create 
    @category = Category.new(categories_param)
    @category.creator_id = current_user.id
    if @category.save
      redirect_to root_path, notice: 'New Category was successfully created.'
    else
      render :new
    end
  end

  private

  def categories_param
    params.require(:category).permit(:name)
  end

end
