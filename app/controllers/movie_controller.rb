class MovieController < ApplicationController
  require 'http'
  def index
    imdb = params[:imdb]
    response = HTTP.get('http://www.omdbapi.com/', :params => {i: imdb, plot: 'full'})
    @Movie = JSON.parse(response)
  end
end
