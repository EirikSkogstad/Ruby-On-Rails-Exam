var $loader = '<div class="loader"><div class="preloader-wrapper loader-btn-watchlist active center-align"><div class="spinner-layer spinner-blue"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-red"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-green"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div></div></div>';
// $('body').append($loader.find('#loader .preloader-wrapper').toggleClass('xxl loader-btn-watchlist'));

getMovieDetails = function(movieIds) {
    $.each(movieIds, function(i, id) {
        $.getJSON('/movie/' + id, function (json, textStatus) {
            var watchlist = {
                exist: json.in_watchlist,
                title: (json.in_watchlist) ? 'Remove from watchlist' : 'Add to watchlist',
                color: ((json.in_watchlist) ? 'red' : 'green'),
                icon: ((json.in_watchlist) ? 'remove' : 'add')
            };
            var plotLength = 150;
            var moviePlot = (json.Plot.length > plotLength) ? json.Plot.slice(0, plotLength) + '...' : json.Plot;

            $('#' + id).html('<div class="card hoverable">' +
                '<div class="card-image"><a href="/movie/' + json.imdbID + '"><img src="' + json.Poster + '"></a>' +
                '<a data-is-in-watchlist="' + watchlist.exist + '" title="' +
                watchlist.title + '" class="btn-floating btn-large halfway-fab waves-effect waves-light ' +
                watchlist.color + ' btn-watchlist"><i class="material-icons">' + watchlist.icon + '</i></a></div>' +
                '<div class="card-content"><div class="row">' +
                '<div class="col s10"><p class="flow-text">' +
                json.Title + '</p></div><div class="col s2 right-align"><p style="padding: 3px 0">' + json.Ratings[0].Value +
                '</p></div></div>' +
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

$('#movie-tiles').on('click', '.btn-watchlist', function(e) {
    // e.preventDefault();
    $btn = $(this);
    var inWatch = $btn.data('is-in-watchlist');
    var method = inWatch ? 'DELETE' : 'POST' ;
    var imdbId = $btn.closest('.movie-tile').attr('id');
    var url = ((inWatch) ? '/profile/' : '/movie/') + imdbId;
    var token = $('[name="authenticity_token"]').val();
    $btn.before($loader);
    $btn.remove();
    $.ajax({
        url: url,
        type: method,
        data: {authenticity_token: token},
        dataType: 'json',
        success: function(data) {
            var watchlist;
            if (data.added === true) {
                watchlist = {
                    exist: true,
                    title: 'Remove from watchlist',
                    color: 'red',
                    icon: 'remove'
                };
            }
            if (data.deleted === true) {
                watchlist = {
                    exist: false,
                    title: 'Add to watchlist',
                    color: 'green',
                    icon: 'add'
                };
            }
            var newBtn = '<a data-is-in-watchlist="' + watchlist.exist + '" title="' +
                watchlist.title + '" class="btn-floating btn-large halfway-fab waves-effect waves-light ' +
                watchlist.color + ' btn-watchlist"><i class="material-icons">' + watchlist.icon + '</i></a>';
            // console.log('#' + )
            $('#' + imdbId + ' .loader').replaceWith(newBtn);
        }
    });
});

processMovieTiles = (function() {
  imdbIds = [];
  $.each($('.movie-tile'), function(i, movieDiv) {
    imdbIds.push(movieDiv.id);
  });
  getMovieDetails(imdbIds);
})();
