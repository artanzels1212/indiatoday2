class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_cache_buster
  
  def set_cache_buster
       response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
       response.headers["Pragma"] = "no-cache"
       response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
  
  def after_sign_out_path_for(resource_or_scope)
      new_user_session_path 
  end
  
   protected
   #not to use authentication while request type is json
   def authenticate_user!
    puts "request type is #{request.content_type}"
    unless request.content_type == 'application/json' 
      unless current_user
        flash[:alert] = "Please login to continue."
        redirect_to new_user_session_path
      end
    end
  end
end
