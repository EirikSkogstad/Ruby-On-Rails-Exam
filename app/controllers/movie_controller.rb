class MovieController < ApplicationController
  require 'http'

  def index
    respond_to do |format|
      if params[:imdb].nil?
        format.json { render :json => Movie.all }
      else
        format.html { @movie = get_json_from_id(params[:imdb]) }
        format.json { render :json => get_json_from_id(params[:imdb]).to_json }
      end
    end
  end

  def search
    filters = params[:filters].split(',')
    found_movies = []
    Movie.all.each do |movie|
      json = JSON.parse(movie['json'])
      genres = json['Genre'].split(',')
      genres.each do |genre|
        filters.each do |filter|
          if genre.strip.downcase == filter.strip.downcase
            found_movies.push(json)
          end
        end
      end
    end
    respond_to do |format|
      format.json { render :json => found_movies.uniq}
    end
  end

  # POST movie/:imdb
  def add
    if session[:username].nil?
      render :nothing => true, :status => 401
    end
    json = get_json_from_id(params[:imdb])
    imdb_id = json['imdbID']

    saved_watchlist = Watchlist.add_movie_if_not_exists(session[:username], imdb_id)
    Movie.add_movie_if_not_exists(imdb_id, json)

    respond_to do |format|
      format.html { redirect_to front_page_path }
      format.json { render :json => {added: saved_watchlist} }
    end
  end

  def delete
    if session[:username].nil?
      render :nothing => true, :status => 401
    end
    imdb_id = params[:imdb]
    respond_to do |format|
      if Watchlist.where(imdb_id: imdb_id, username: session[:username]).take.destroy!
        format.html { redirect_to front_page_path }
        format.json { render :json => {deleted: true} }
      else
        format.json { render :json => {deleted: false} }
      end
    end
  end

  def get_json_from_id(id)
    if Movie.exists?(imdb_id: id)
      json = Movie.find_by(imdb_id: id)['json']
      was_in_database = true
    else
      # Send a HTTP GET with IMDB ID to external movie API and receive the movie in JSON
      json = HTTP.get('http://www.omdbapi.com/', :params => {i: id, plot: 'full', apikey: 'ca17ed8a'})
      Movie.new(imdb_id: id, json: json).save
      was_in_database = false
    end
    response = JSON.parse(json)
    response['in_watchlist'] = Watchlist.is_movie_already_in_watchlist id
    response['movie_was_in_db'] = was_in_database
    response
  end

end
