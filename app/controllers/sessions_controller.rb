class SessionsController < ApplicationController

  # In progress, i THINK sessions should be handled like this

  # Alternative name: LoginsController
  # Alternative way: do it in UsersController
  # Correct way: ¯\_(ツ)_/¯

  # https://www.railstutorial.org/book/basic_login
  # http://guides.rubyonrails.org/action_controller_overview.html#session


  def create
    user = User.find_by(username: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to front_page_path
    else
      redirect_to new_user_path
    end
  end

  # Create session
  def login
    # session[:user_id] = user.id
  end

  # Destroy session
  def logout
    session[:user_id] = nil
    redirect_to front_page_path
  end
end