var filters = [];

//On buttonclick add the category to the filters-list

$('.btn-genre').click(function() {
    //Either do btn.id or btn.text.toLowerCase(). Whatever is best
    //var btn = btn.id
    //if(filters.contains(btn){
    //    remove(btn)
    // } else{
    //    filters.push(btn)
    // }
    var id = $(this).attr('id');
    var filterExistsOnIndex = filters.indexOf(id);
    if (filterExistsOnIndex > -1) {
        filters.pop(filterExistsOnIndex);
    } else {
        filters.push(id);
    }
    console.log(filters);

    $(this).toggleClass('blue-grey darken-3 blue-grey');
});

// Redirect to frontpage with different movie-list based on buttons pressed.
$('#big-button').click(function() {

    if(filters.length <= 0) {
        window.location.replace('../');
    }
    else{
        var filterString = filters.join();
        var url = '../?filters=' + filterString;
        window.location.replace(url);
    }

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

