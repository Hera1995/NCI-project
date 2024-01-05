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

    // 构建要发送的数据对象，与后端 API 所需的数据格式一致
    const requestData = {
        "messages": [
            {
                role: "user",
                content: question
            }
        ]
    }

    // 发送 AJAX 请求
    $.ajax({
        type: 'POST', // 或者 'GET'，取决于后端 API 的要求
        url: window.location.origin + '/ai', // 这里填写你的后端 API 的端点
        data: JSON.stringify(requestData), // 将数据转换为 JSON 字符串
        contentType: 'application/json', // 指定请求内容的类型为 JSON
        success: function (response) {
            $('#ai-answer').html(response.text.replace(/\n\n/g, '</p><p>').replace(/\n/g, '<br>'));
            // 成功接收到响应后的处理
            console.log('成功接收到响应:', response);
            // 在这里你可以处理后端返回的数据，更新页面内容等
        },
        error: function (xhr, status, error) {
            // 请求出错时的处理
            console.error('请求出错:', error);
            // 这里你可以处理请求错误，如显示错误信息给用户等
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
        type: 'GET', // 或者 'GET'，取决于后端 API 的要求
        url: window.location.origin + '/movie', // 这里填写你的后端 API 的端点
        data: param,
        contentType: 'application/json', // 指定请求内容的类型为 JSON
        success: function (response) {
            // 成功接收到响应后的处理
            console.log('成功接收到响应:', response);
            movieArrange(response.Search);
        },
        error: function (xhr, status, error) {
            // 请求出错时的处理
            console.error('请求出错:', error);
            // 这里你可以处理请求错误，如显示错误信息给用户等
        }
    });
}

function movieArrange(list) {
    console.log("---------------------------")
    $('#movie-list-container').empty();

// 将数据按照每3个一组分割
    let chunks = [];
    for (let i = 0; i < list.length; i += 3) {
        chunks.push(list.slice(i, i + 3));
    }

// 遍历分组，将数据填充到HTML结构中
    $.each(chunks, function (index, group) {
        let $centerDiv = $('<div class="center"></div>');
        let $top3Div = $('<div class="top3"></div>');

        $.each(group, function (i, item) {
            let $boxDiv = $('<div class="box"></div>');
            let $link = $('<a href="detail.jsp"></a>');
            let $img = $('<img src="' + item.Poster + '" alt="' + item.Title + '">');
            var $verticalDiv = $('<div class="vertical"></div>');
            var $titleP = $('<p class="bookname"><b>' + item.Title + '</b></p>');
            var $yearP = $('<p class="price"><b>' + item.Year + '</b></p>');
            var $reviewButton = $('<button type="button" class="addtobasket" value="' + item.imdbID + '">Review</button>');

            $link.append($img);
            $boxDiv.append($link);
            $verticalDiv.append($titleP, $yearP, $reviewButton);
            $boxDiv.append($verticalDiv);
            $top3Div.append($boxDiv);
        });

        $centerDiv.append($top3Div);
        $('#movie-list-container').append($centerDiv);
    });

}

