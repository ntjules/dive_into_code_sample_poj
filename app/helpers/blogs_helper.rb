module BlogsHelper
   def isfavorite(id)
   @favorite = current_user.favorites.find_by(blog_id: id)
   end
  
end
