

getMovieDetails = function(movieIds) {
    console.log(movieIds);
    $.each(movieIds, function(i, id) {
        $.getJSON('http://www.omdbapi.com/', {i: id, apikey: 'ca17ed8a'}, function (json, textStatus) {
            var plotLength = 150;
            var moviePlot = (json.Plot.length > plotLength) ? json.Plot.slice(0, plotLength) + '...' : json.Plot;
            $('#' + id).html('<div class="card hoverable">' +
                '<div class="card-image"><a href="/movie/' + json.imdbID + '"><img src="' + json.Poster + '"></a>' +
                '<a title="Add to watchlist" class="btn-floating btn-large halfway-fab waves-effect waves-light red"><i class="material-icons">playlist_add</i></a></div>' +
                '<div class="card-content"><div class="row">' +
                '<div class="col s10"><p class="flow-text">' + json.Title + '</p></div><div class="col s2 right-align"><p style="padding: 3px 0">' + json.Ratings[0].Value + '</p></div></div>' +
                '<div class="row"><div class="col s12"><p class="small">' + moviePlot + '</p></div></div></div></div>');
            if (i === movieIds.length - 1) {
                setTimeout(function() {
                    resizeElements('.movie-tile .card-image img');
                    resizeElements('.movie-tile .card-content');
                }, 250);
            }
        });
    });
};

resizeElements = function(selector){
  var maxHeight = 0;
  if (selector.length = 0) return;
  $.each($(selector), function(i, movieDiv) {
    if (movieDiv.clientHeight > maxHeight) maxHeight = movieDiv.clientHeight;
  });
  $(selector).each(function() {
    $(this).css('height', maxHeight);
  });
};

processMovieTiles = (function() {
  imdbIds = [];
  $.each($('.movie-tile'), function(i, movieDiv) {
    imdbIds.push(movieDiv.id);
  });
  getMovieDetails(imdbIds);
})();
