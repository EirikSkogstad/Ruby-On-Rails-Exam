json.extract! user, :id, :username, :password, :usertype, :watchlist, :created_at, :updated_at
json.url user_url(user, format: :json)
