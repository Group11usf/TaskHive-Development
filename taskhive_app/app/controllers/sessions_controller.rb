class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }

  def new
  end

  def create
    if user = User.authenticate_by(params.permit(:email_address, :password))
      start_new_session_for user
      @user = User.find_by(email_address: params[:email_address])
      session[:user_id] = @user.id
      redirect_to calendar_path
    else
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def destroy
    terminate_session
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged out successfully!"
  end
  

  private

end
