module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
  def logged_in_user
      unless logged_in?
         flash[:danger] = "Please log in."
        redirect_to new_session_path
      
         
      end
  end

end
