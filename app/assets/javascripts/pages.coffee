# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

getMovieDetails = (movieId) ->
  $.getJSON('http://www.omdbapi.com/', {i: movieId, apikey: 'ca17ed8a'}, (json, textStatus) ->
    $('#' + movieId).html('<div class="center-align"><h2>' + json.Title + '</h2><a href="/movie/' + json.imdbID + '"><img src="' + json.Poster + '"></a></div>')
  )

$.each($('.movie-tile'), (i, movieDiv) ->
  getMovieDetails(movieDiv.id)
)
