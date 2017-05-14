// http://stackoverflow.com/a/42757285 - Modified
// Sends AJAX to url after x ms after keyup.
function ajaxAutoComplete(options) {

    var defaults = {
        // Listen on HTML input
        inputId: null,
        // Send request to url
        ajaxUrl: false,
        // HTTP method
        method: 'GET',
        // Data to send
        data: {},
        // Minimum text length
        minLength: 3
    };

    options = $.extend(defaults, options);
    var $input = $(options.inputId);

    if (options.ajaxUrl) {

        var $autocomplete = $('<ul id="ac" class="autocomplete-content dropdown-content"></ul>'),
            $inputDiv = $input.closest('.input-field'),
            request,
            runningRequest = false,
            timeout,
            liSelected;

        if ($inputDiv.length) {
            $inputDiv.append($autocomplete); // Set ul in body
        } else {
            $input.after($autocomplete);
        }

        var highlight = function (string, match) {
            var matchStart = string.toLowerCase().indexOf("" + match.toLowerCase() + ""),
                matchEnd = matchStart + match.length - 1,
                beforeMatch = string.slice(0, matchStart),
                matchText = string.slice(matchStart, matchEnd + 1),
                afterMatch = string.slice(matchEnd + 1);
            string = "<span>" + beforeMatch + "<span class='highlight'>" +
                matchText + "</span>" + afterMatch + "</span>";
            return string;

        };

        $autocomplete.on('click', 'li', function () {
            $input.val($(this).text().trim());
            $autocomplete.empty();
            $autocomplete.closest('#search-form').hide();
            $('#brand, #menu').show();
        });

        $input.on('keyup', function (e) {

            if (timeout) { // comment to remove timeout
                clearTimeout(timeout);
            }

            if (runningRequest) {
                request.abort();
            }

            if (e.which === 13) { // select element with enter key
                liSelected[0].click();
                return;
            }

            // scroll ul with arrow keys
            if (e.which === 40) {   // down arrow
                if (liSelected) {
                    liSelected.removeClass('selected');
                    next = liSelected.next();
                    if (next.length > 0) {
                        liSelected = next.addClass('selected');
                    } else {
                        liSelected = $autocomplete.find('li').eq(0).addClass('selected');
                    }
                } else {
                    liSelected = $autocomplete.find('li').eq(0).addClass('selected');
                }
                return; // stop new AJAX call
            } else if (e.which === 38) { // up arrow
                if (liSelected) {
                    liSelected.removeClass('selected');
                    next = liSelected.prev();
                    if (next.length > 0) {
                        liSelected = next.addClass('selected');
                    } else {
                        liSelected = $autocomplete.find('li').last().addClass('selected');
                    }
                } else {
                    liSelected = $autocomplete.find('li').last().addClass('selected');
                }
                return;
            }

            // escape these keys
            if (e.which === 9 ||        // tab
                e.which === 16 ||       // shift
                e.which === 17 ||       // ctrl
                e.which === 18 ||       // alt
                e.which === 20 ||       // caps lock
                e.which === 35 ||       // end
                e.which === 36 ||       // home
                e.which === 37 ||       // left arrow
                e.which === 39) {       // right arrow
                return;
            } else if (e.which === 27) { // Esc. Close ul
                $autocomplete.empty();
                return;
            }

            var val = $input.val().toLowerCase();
            // $autocomplete.empty();

            if (val.length > options.minLength) {

                timeout = setTimeout(function () { // comment this line to remove timeout
                    runningRequest = true;

                    request = $.ajax({
                        type: options.method,
                        url: options.ajaxUrl,
                        dataType: 'json',
                        data: {s: val},
                        success: function (json) {
                            data = json.Search;
                            var resultHtml = [];
                            if (!$.isEmptyObject(data)) { // (or other) check for empty result
                                $.each(data, function(i, movie) {
                                    // Push HTML formatted results from API to returnable array, with link to movie specific page
                                    if (movie.Poster == "N/A") {
                                        resultHtml.push('<a href="/movie/' + movie.imdbID + '"><li class="collection-item"><h5>' + movie.Title + ' (' + movie.Year + ')</h5></li></a>');
                                    } else {
                                        resultHtml.push('<a href="/movie/' + movie.imdbID + '"><li class="collection-item"><img src="' + movie.Poster + '" class="left"><h5>' + movie.Title + ' (' + movie.Year + ')</h5></li></a>');
                                    }
                                });
                            } else {
                                resultHtml.push('<li>No results</li>');
                            }
                            $autocomplete.append(resultHtml.join(''));
                        }
                    });
                }, 350); // comment this line to remove timeout
            }
        });

        $(document).click(function(event) { // close ul if clicked outside
            $searchForm = $('nav #search-form');
            // if (!$(event.target).closest($searchForm).length) {
            if (!$(event.target).closest('nav').length) {
                $autocomplete.empty();
                if ($searchForm.css('display') !== 'none') {
                    console.log($searchForm.css('display'));
                    $('#brand, #menu').show();
                    $searchForm.hide();
                }
            }
        });
    }
}
