class SessionsController < ApplicationController
  include SessionsHelper

  def create
    username = params[:name]
    username = username.downcase
    user = User.find_by(username: username)
    if user and user.authenticate(params[:password])
      session[:username] = user.username

      redirect_to front_page_path
    else
      flash[:notice] = 'Wrong username or password. Please try again'
      redirect_to front_page_path
    end
  end

  # Destroy session
  def logout
    session[:username] = nil
    redirect_to front_page_path
  end

end