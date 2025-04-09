class UsersController < ApplicationController
  # Allow unauthenticated users to access registration pages.
  skip_before_action :require_authentication, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Optionally, auto-log in the user or simply redirect them to the login page.
      session[:user_id] = @user.id
      redirect_to login_path, notice: "Account created successfully! Please log in."
    else
      flash.now[:alert] = "Registration failed. Please check your input."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end
