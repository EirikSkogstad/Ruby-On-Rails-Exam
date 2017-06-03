class MovieController < ApplicationController
  require 'http'


  def index
    @movie = get_json_from_id params[:imdb]
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
    if Movie.exists?(imdb_id: id)
      response = Movie.find_by(imdb_id: id)['json']
    else
      # Send a HTTP GET with IMDB ID to external movie API and receive the movie in JSON
      response = HTTP.get('http://www.omdbapi.com/', :params => {i: id, plot: 'full', apikey: 'ca17ed8a'})
    end
    JSON.parse(response)
  end

end
