/* eslint-disable */
$(document).ready(function () {
    $('a[href*=\\#]').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: $(this.hash).offset().top
        }, 500);
    });
});