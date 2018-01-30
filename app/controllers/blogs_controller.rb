class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blogs=Blog.all
    # binding.pry
  end
  def new
    @blog = Blog.new
     
    
  end
  def create
    
  
    # Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    # Blog.create(params[:blog]) all variables at once // but not secure
    # Blog.create(params.require(:blog).permit(:title, :content)) # allow only specified parameters
    # Blog.create(blog_params)#read from method
    # redirect_to "/blogs/new"
    # redirect_to blogs_new_path
    
    
      @blog = Blog.new(blog_params)
     if @blog.save
      redirect_to blogs_path, Notice: "You have created new blog!"
    
     
      else
      render 'new'
  
     end
    
   
  end
  def show
    # @blog = Blog.find(params[:id])
  end
  def edit
    # @blog = Blog.find(params[:id])
  end
  def update
    # @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "You have edited this blog！"
    else
      render 'edit'
    end
  end
  def destroy
  @blog.destroy
  redirect_to blogs_path, notice: "You have deleted the blog!"
  end
  
  
  
  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
  def set_blog
      @blog = Blog.find(params[:id])
  end
end
