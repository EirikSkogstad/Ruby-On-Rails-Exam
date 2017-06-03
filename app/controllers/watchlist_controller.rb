class WatchlistController < ApplicationController
  def new
    Watchlist.new(params[:username])
  end
end
