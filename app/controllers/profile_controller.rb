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
    @movie_json = []
    watchlist = Watchlist.where(username: session[:user_id])
    @movie_json = watchlist.map { |item| item.movie_data }
  end
end