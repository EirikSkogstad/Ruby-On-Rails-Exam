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

$('#big-button').click(function() {
    $.ajax({
        url: '/search_genres/',
        type: 'GET',
        dataType: 'json',
        data: {filters: filters.join(',')}
    });
});