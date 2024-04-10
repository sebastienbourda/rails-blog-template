class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to root_path, notice: 'This page is not allowed for now.' unless signed_in?
  end

  private


  def sign_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def signed_in?
    !!current_user
  end
  helper_method :signed_in?
end
