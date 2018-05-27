class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def authenticate_admin!
    if user_signed_in? && current_user.admin == true
      current_user.admin
    else
      redirect_to root_path, alert: "You're not authorised"
    end
  end
  
  helper_method :authenticate_admin!
end
