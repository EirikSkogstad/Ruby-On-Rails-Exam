class SessionsController < ApplicationController

  # In progress, i THINK sessions should be handled like this

  # Alternative name: LoginsController
  # Alternative way: do it in UsersController
  # Correct way: ¯\_(ツ)_/¯

  # https://www.railstutorial.org/book/basic_login
  # http://guides.rubyonrails.org/action_controller_overview.html#session


  def create
    user = User.find_by(username: params[:name].downcase!)
    if user and user.authenticate(params[:password])
      session[:username] = user.id

      redirect_to front_page_path
    else
      flash[:notice] = 'Wrong username or password. Please try again'
      redirect_to new_user_path
    end
  end

  # Create session
  def login
    # session[:username] = user.id
  end

  # Destroy session
  def logout
    session[:username] = nil
    redirect_to front_page_path
  end

  def is_user_admin
    user = User.find(username: session[:username])

    return user.is_admin
  end
end