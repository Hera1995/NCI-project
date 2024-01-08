$(document).ready(function () {
    addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    // Submit review
    $('#submit').click(function () {
        let review = {
            content: $('#comment').val(),
            imdbId: $('.detail-info:contains("imdbID")').text().trim().split(': ')[1]
        }

        let url;
        const reviewId = $(this).attr('reviewId');
        // edit review
        if (reviewId) {
            review.id = parseInt(reviewId);
            $(this).removeAttr('reviewId');
            url = window.location.origin + '/user/updateReview';
        } else {
            // create review
            url = window.location.origin + '/user/addReview';
        }

        console.log(review);

        $.ajax({
            type: 'POST',
            url: url,
            data: JSON.stringify(review),
            dataType: 'json',
            contentType: 'application/json',
            success: function (response) {
                if (response.status === 200) {
                    location.reload();
                } else {
                    $('.error-alarm').html(response.msg);
                }
            },
            error: function (response) {

            }
        });

    });

    // edit review
    $('.review-button-edit').on('click', function () {
        // 获取相应的 <p> 标签中的内容
        const reviewContent = $(this).closest('.data').find('p').text();
        const $comment = $('#comment');
        $comment.removeAttr('placeholder onfocus onblur');
        $comment.val(reviewContent);
        $('#submit').attr('reviewId', $(this).val());
    });

    // delete review
    $('.review-button-delete').on('click', function () {
        const reviewId = $(this).val(); // get reviewId
        $.ajax({
            type: 'GET',
            url: window.location.origin + '/user/deleteReview',
            data: {id: reviewId},
            dataType: 'json',
            success: function (response) {
                console.log('Review deleted:', response);
                location.reload();
            },
            error: function (xhr, status, error) {
                console.error('Error deleting review:', error);
            }

        });


    });
});


// edit review
/*$('#edit-btn').click(function () {


    const review = {
        content: $('#comment').val(),
        imdbId: $('.detail-info:contains("imdbID")').text().trim().split(': ')[1]

    }

    console.log(review);

    $.ajax({
        type: 'POST',
        url: window.location.origin + '/user/updateReview',
        data: JSON.stringify(review),
        dataType: 'json',
        contentType: 'application/json',
        success: function (response) {
            if (response.status === 200) {
                location.reload();
            } else {
                $('.error-alarm').html(response.msg);
            }
        },
        error: function (response) {

        }
    });

});*/

// delete review
/*$('#delete-btn').click(function () {
    var reviewId = $(this).val(); // get reviewId
    $.ajax({
        type: 'GET',
        url: window.location.origin + '/user/deleteReview',
        data: {id: reviewId},
        dataType: 'json',
        success: function (response) {
            console.log('Review deleted:', response);
            location.reload();
        },
        error: function (xhr, status, error) {
            console.error('Error deleting review:', error);
        }

    });


});*/

function hideURLbar() {
    window.scrollTo(0, 1);
}