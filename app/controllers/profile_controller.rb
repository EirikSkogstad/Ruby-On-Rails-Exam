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
    respond_to do |format|
      if Watchlist.where(imdb_id: imdb_id, username: session[:username]).take.destroy!
        format.html { redirect_to profile_path }
        format.json { render :json => {deleted: true} }
      else
        format.json { render :json => {deleted: false} }
      end
    end
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