class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def index
  end
  
  def create
    @blog = Blog.new(list_params)
    @blog.save
    redirect_to blogs_path
  end

  def show
  end

  def edit
  end
  
  private
  def list_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
