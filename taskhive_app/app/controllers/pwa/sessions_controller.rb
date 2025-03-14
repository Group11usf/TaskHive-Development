module Pwa
  class SessionsController < ApplicationController
    def new
      # This action renders the login view (app/views/pwa/new.html.erb)
    end

    def create
      username = params[:username]
      password = params[:password]
      
      # Call your basic authentication helper.
      # For example, assuming you have a helper in app/models/user_authentication/authentication.rb:
      if ::Authentication.valid_credentials?(username, password)
        session[:username] = username
        redirect_to root_path, notice: "Logged in successfully!"
      else
        flash.now[:alert] = "Invalid username or password"
        render :new
      end
    end

    def destroy
      session[:username] = nil
      redirect_to login_path, notice: "Logged out!"
    end
  end
end
