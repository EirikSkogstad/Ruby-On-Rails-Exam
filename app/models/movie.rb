class Movie < ApplicationRecord
  validates :imdb_id, uniqueness: true
  validates :imdb_id, presence: true
  validates :json, uniqueness: true
  validates :json, presence: true


  class << self
    def add_movie_if_not_exists(imdb_id, json)
      unless Movie.exists?(imdb_id: imdb_id)
        movie = Movie.new(imdb_id: imdb_id, json: json.to_json)
        movie.save
      end
    end
  end
end
