class BlogsController < ApplicationController
  before_action :logged_in_user
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
     
    @blog = Blog.new
    @blogs=Blog.all.order('id DESC')
   
    # binding.pry
    
  end
  
  
  def my_fav
     @blog = Blog.new
    @fav=current_user.favorite_blogs.order('id DESC')
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
    @blogs=Blog.all.order('id DESC')
    
      @blog = Blog.new(blog_params)
      @blog.user = current_user
     if @blog.save
      redirect_to blogs_path, Notice: "You have created new blog!"
    
     
      else
      # render 'new'
       render 'index'
  
     end
    
   
  end
  def show
     @favorite = current_user.favorites.find_by(blog_id: @blog.id)
    # @blog = Blog.find(params[:id])
  end
  def edit
    # @blog = Blog.find(params[:id])
     @blogs=Blog.all.order('id DESC')
  end
  def update
    # @blog = Blog.find(params[:id])
    @blogs=Blog.all.order('id DESC')
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
