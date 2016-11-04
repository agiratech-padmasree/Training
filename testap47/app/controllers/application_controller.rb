class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  def after_sign_in_path_for(resourceorscope)
    # puts @is_admin
    # puts '1111111111111111'   
    if current_user.is_admin == true
       
       dashboards_path
       
    else
      products_path
    end

   # dashboards_path
  #   if current_user.has_role? :admin
  # dashboards_path 
 end
  #   else 
  #     if current_user.has_role? :customer
  #       products_path
  #      end #your path
  # end

   # prepend_before_filter :require_no_authentication, only: [:cancel ]
end
