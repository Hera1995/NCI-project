$(document).ready(function () {

    addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }

    $("#slider").responsiveSlides({
        auto: true,
        nav: true,
        speed: 500,
        namespace: "callbacks",
        pager: true,
    });

    // ai request
    $('#ai-btn').click(aiRequest);
    // Movie search
    $('#movie-search').click(movieSearch);

});

function aiRequest() {
    const question = $('#ai-qestion').val();

    if (!question) {
        return;
    }

    // data object
    const requestData = {
        "messages": [
            {
                role: "user",
                content: question
            }
        ]
    }

    // send AJAX request
    $.ajax({
        type: 'POST',
        url: window.location.origin + '/ai',
        data: JSON.stringify(requestData),
        contentType: 'application/json',
        success: function (response) {
            // $('#ai-answer').html(response.text.replace(/\n\n/g, '</p><p>').replace(/\n/g, '<br>'));
            $('#ai-answer').html(response.text.replace(/\\\\/g, "\\").replace(/\\n/g, "<br>"));
            // get response
            console.log('get response successfully:', response);
        },
        error: function (xhr, status, error) {
            // error
            console.error('request error:', error);

        }
    });
}

function movieSearch() {
    console.log("1111111111111")

    const param = {
        movieName: $('#movie-name').val(),
        page: 1
    }

    $.ajax({
        type: 'GET',
        url: window.location.origin + '/movie',
        data: param,
        contentType: 'application/json',
        success: function (response) {
            // get response
            console.log('get response successfully:', response);
            movieArrange(response.Search);
        },
        error: function (xhr, status, error) {
            // error
            console.error('request error:', error);

        }
    });
}

function movieArrange(list) {
    console.log("---------------------------")
    $('#movie-list-container').empty();

/*// divide data into 3 groups
    let chunks = [];
    for (let i = 0; i < list.length; i += 3) {
        chunks.push(list.slice(i, i + 3));
    }

    // traverse the list
    $.each(chunks, function (index, group) {
        let $centerDiv = $('<div class="center"></div>');
        let $top3Div = $('<div class="top3"></div>');

        $.each(group, function (i, item) {
            let $boxDiv = $('<div class="box"></div>');
            let $link = $('<a href="'+ window.location.origin + '/detail?movieId=' + item.imdbID + '&title=' + item.Title + '&time=' + item.Year + '&imgUrl=' + item.Poster + '"></a>');
            let $img = $('<img src="' + item.Poster + '" alt="' + item.Title + '">');
            let $verticalDiv = $('<div class="vertical"></div>');
            let $titleP = $('<p class="bookname"><b>' + item.Title + '</b></p>');
            let $yearP = $('<p class="price"><b>' + item.Year + '</b></p>');
            let $reviewButton = $('<button type="button" class="addtobasket" value="' + item.imdbID + '">Review</button>');

            $link.append($img);
            $boxDiv.append($link);
            $verticalDiv.append($titleP, $yearP, $reviewButton);
            $boxDiv.append($verticalDiv);
            $top3Div.append($boxDiv);
        });

        $centerDiv.append($top3Div);
        $('#movie-list-container').append($centerDiv);
    });*/


    let $centerDiv = $('<div class="center"></div>');
    let $top3Div = $('<div class="top3"></div>');

    // traverse the list
    $.each(list, function (index, item) {
        let $boxDiv = $('<div class="box"></div>');
        let $link = $('<a href="'+ window.location.origin + '/detail?movieId=' + item.imdbID + '&title=' + item.Title + '&time=' + item.Year + '&imgUrl=' + item.Poster + '"></a>');
        let $img = $('<img src="' + item.Poster + '" alt="' + item.Title + '">');
        let $verticalDiv = $('<div class="vertical"></div>');
        let $titleP = $('<p class="bookname"><b>' + item.Title + '</b></p>');
        let $yearP = $('<p class="price"><b>' + item.Year + '</b></p>');
        let $reviewButton = $('<a href="'+ window.location.origin + '/detail?movieId=' + item.imdbID + '&title=' + item.Title + '&time=' + item.Year + '&imgUrl=' + item.Poster + '"><button type="button" class="addtobasket" value="' + item.imdbID + '">Review</button></a>');

        $link.append($img);
        $boxDiv.append($link);
        $verticalDiv.append($titleP, $yearP, $reviewButton);
        $boxDiv.append($verticalDiv);
        $top3Div.append($boxDiv);
    });

    $centerDiv.append($top3Div);
    $('#movie-list-container').append($centerDiv);

}

