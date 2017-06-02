filters = [];

//On buttonclick add the category to the filters-list

$('.btn').click(function() {
    //Either do btn.id or btn.text.toLowerCase(). Whatever is best
    //var btn = btn.id
    //if(filters.contains(btn){
    //    remove(btn)
    // } else{
    //    filters.push(btn)
    // }

    $(this).toggleClass('blue-grey darken-3 blue-grey');
});

// Redirect to frontpage with different movie-list based on buttons pressed.
$('#big-button').click(function() {
    /*
    var foundMovies = [];
    $.each(allMovies, function(movieIndex, movie) {
        $.each(filters, function(filterIndex, filter) {
            if (movie.category.indexOf(filter) >= 0) {
                foundMovies.push(movie);
            }
        });
    });
    */
});

