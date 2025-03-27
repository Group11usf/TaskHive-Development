class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Optionally, you could auto-log in the user:
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
