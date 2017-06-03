# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

getMovieDetails = (movieId) ->
  $.getJSON('http://www.omdbapi.com/', {i: movieId, apikey: 'ca17ed8a'}, (json, textStatus) ->
#    $('#' + movieId).html('<div class="center-align"><h2>' + json.Title + '</h2><a href="/movie/' + json.imdbID + '"><img src="' + json.Poster + '"></a></div>')
    $('#' + movieId).html('<div class="card hoverable">' +
        '<div class="card-image"><a href="/movie/' + json.imdbID + '"><img src="' + json.Poster + '"></a>' +
        '<a title="Add to watchlist" class="btn-floating btn-large halfway-fab waves-effect waves-light red"><i class="material-icons">playlist_add</i></a></div>' +
        '<div class="card-content">' +
        '<p class="card-title">' + json.Title + '<span class="right">' + json.Ratings[0].Value + '</span></p>' +
        '<p>' + json.Plot + '</p></div></div>');
  )

$.each($('.movie-tile'), (i, movieDiv) ->
  getMovieDetails(movieDiv.id)
)
