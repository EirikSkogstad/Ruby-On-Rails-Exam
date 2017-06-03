class MovieController < ApplicationController
  require 'http'


  def index
    @movie = get_json_from_id params[:imdb]
  end

  # POST movie/:data
  def add
    json = get_json_from_id(params[:imdb])

    # TODO check if movies already exists in watchlist.
    imdb_id = json['imdbID']
    watchlist = Watchlist.new(username: session[:username], imdb_id: imdb_id)
    movie = Movie.new(imdb_id: imdb_id, json: json.to_json)
    watchlist.save
    movie.save

    redirect_to front_page_path
  end

  def get_json_from_id(id)
    # Send a HTTP GET with IMDB ID to external movie API and receive the movie in JSON
    response = HTTP.get('http://www.omdbapi.com/', :params => {i: id, plot: 'full', apikey: 'ca17ed8a'})
    # Parse JSON to object
    JSON.parse(response)
  end
end
