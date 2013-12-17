class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
      def unauthorized_access
        flash[:error] = "Unauthorized access"
        redirect_to root_path
      end
end
