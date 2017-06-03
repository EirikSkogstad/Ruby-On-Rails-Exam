class MovieController < ApplicationController
  require 'http'


  def index
    respond_to do |format|
      format.html { @movie = get_json_from_id(params[:imdb]) }
      format.json { render :json => get_json_from_id(params[:imdb]).to_json }
    end
  end

  # POST movie/:imdb
  def add
    json = get_json_from_id(params[:imdb])
    imdb_id = json['imdbID']

    Watchlist.add_movie_if_not_exists(session[:username], imdb_id)
    Movie.add_movie_if_not_exists(imdb_id, json)

    redirect_to front_page_path
  end

  def get_json_from_id(id)
    in_watchlist = false
    if Movie.exists?(imdb_id: id)
      json = Movie.find_by(imdb_id: id)['json']
      in_watchlist = true
    else
      # Send a HTTP GET with IMDB ID to external movie API and receive the movie in JSON
      json = HTTP.get('http://www.omdbapi.com/', :params => {i: id, plot: 'full', apikey: 'ca17ed8a'})
    end
    response = JSON.parse(json)
    response['in_watchlist'] = in_watchlist
    response
  end

end
