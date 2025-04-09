class ApplicationController < ActionController::Base
  include Authentication

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
