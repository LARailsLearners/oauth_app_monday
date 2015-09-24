class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :current_user
  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id])
    # User.find_by(token: Session.last.token)
  end
  helper_method :current_user

  # def index
  #   binding.pry
  #   @user = current_user
  # end

  def current_user=(user)
    @current_user = user
  end
end
