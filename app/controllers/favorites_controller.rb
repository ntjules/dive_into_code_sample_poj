class FavoritesController < ApplicationController
  # before_action :authenticate_user!

  def create
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blogs_url, notice: "liked blog"
  end

  def destroy
    favorite = current_user.favorites.find_by(blog_id: params[:blog_id]).destroy
    redirect_to blogs_url, notice: "canceled"
  end
end
