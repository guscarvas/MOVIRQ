class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper    
  def authorize
      unless logged_in?
        redirect_to root_url
      end
  end
  # before_action :authorize, except: [:new, :create] assim que bloqueia acesso
  def correct_user?
    @user = User.find(params[:id])
                unless current_user == @user
                            redirect_to users_path
                end
  end
  def after_sign_in_path_for(resource)
    users_path
  end
end
