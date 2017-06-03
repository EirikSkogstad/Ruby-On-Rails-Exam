class Movie < ApplicationRecord
  validates :imdb_id, uniqueness: true
  validates :imdb_id, presence: true
  validates :json, uniqueness: true
  validates :json, presence: true
end
