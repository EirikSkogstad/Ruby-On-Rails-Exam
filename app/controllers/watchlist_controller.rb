class WatchlistController < ApplicationController
  def new
    Watchlist.new(params[:user_id])
  end
end
