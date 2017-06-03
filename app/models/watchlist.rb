class Watchlist < ApplicationRecord

  class << self
    def is_movie_already_in_watchlist(imdb_id)
      Watchlist.exists?(imdb_id: imdb_id)
    end

    def add_movie_if_not_exists(username, imdb_id)
      unless Watchlist.is_movie_already_in_watchlist(imdb_id)
        watchlist = Watchlist.new(username: username, imdb_id: imdb_id)
        watchlist.save
      end
    end
  end
end
