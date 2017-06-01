class ProfileController < ApplicationController

  def index
    if session[:user_id].nil?
      redirect_to user_not_logged_in_path
    else
      read_movies
    end

  end

  private 
  def read_movies
    @movies = Watchlist.find_by(username: session[:user_id])
  end
end