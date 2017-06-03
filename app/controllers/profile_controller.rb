class ProfileController < ApplicationController
  def index
    if session[:username].nil?
      redirect_to user_not_logged_in_path
    else
      read_movies
    end
  end

  def delete
    imdb_id = params[:imdb_id]
    Watchlist.find_by(imdb_id: imdb_id).destroy!
    redirect_to profile_path
  end

  private
  def read_movies
    @movie_map = Hash.new

    watchlist = Watchlist.where(username: session[:username])
    imdb_ids = watchlist.map {|item| item.imdb_id}

    imdb_ids.each {|id|
      movie = Movie.find_by(imdb_id: id)
      @movie_map[id] =  JSON.parse(movie.json)
    }
  end
end