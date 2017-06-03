class SessionsController < ApplicationController
  include SessionsHelper

  def create
    user = User.find_by(username: params[:name])
    if user and user.authenticate(params[:password])
      session[:username] = user.username

      redirect_to front_page_path
    else
      flash[:notice] = 'Wrong username or password. Please try again'
      redirect_to new_user_path
    end
  end

  # Destroy session
  def logout
    session[:username] = nil
    redirect_to front_page_path
  end

end