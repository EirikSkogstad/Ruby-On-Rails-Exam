var filters = [];

//On buttonclick add the category to the filters-list
$('.btn-genre').click(function() {
    var id = $(this).attr('id');
    var filterExistsOnIndex = filters.indexOf(id);
    if (filterExistsOnIndex > -1) {
        filters.pop(filterExistsOnIndex);
    } else {
        filters.push(id);
    }

    $(this).toggleClass('blue-grey darken-3 blue-grey');
});

// Redirect to frontpage with different movie-list based on buttons pressed.
// $('#big-button').click(function() {
//     if(filters.length <= 0) {
//         window.location.replace('../');
//     }
//     else{
//         var filterString = filters.join();
//         var url = '../?filters=' + filterString;
//         window.location.replace(url);
//     }
// });

$('#slide-filters').click(function() {
    $('#filter-wrapper').slideToggle();
});

$('#big-button').click(function() {
    $.ajax({
        url: '/search_genres/',
        type: 'GET',
        dataType: 'json',
        data: {filters: filters.join(',')},
        success: function(json) {
            $('#title').click();
            var htmlArr = [];
            $.each(json, function(i, movie) {
                var plot = (movie.Plot.length > 150) ? movie.Plot.slice(0, 150) + '...' : movie.Plot;
                if ((i + 1) % 6 == 1) {
                    htmlArr.push('<div class="row">');
                }
                htmlArr.push('<div class="col s2">' +
                    '<div class="card">' +
                        '<div class="card-image">' +
                            '<a href="/movie/' + movie.imdbID + '"><img src="' + movie.Poster + '"></a>' +
                        '</div>' +
                        '<div class="card-content">' +
                            '<h4>' + movie.Title + '</h4>' +
                            '<p>' + plot + '</p>' +
                        '</div>' +
                    '</div>' +
                '</div>');
                if ((i + 1) % 6 == 0) {
                    htmlArr.push('</div>');
                }
                console.log(i);
            });
            $('#search-result').html('<div class="row">' + htmlArr.join('') + '</div>');
        }
    });
});