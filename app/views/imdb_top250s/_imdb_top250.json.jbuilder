json.extract! imdbTop250, :id, :imdbID, :title
json.url imdb_top250_url(imdbTop250, format: :json)