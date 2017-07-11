function onInit() {
    $.ajax({
        url: '/loadProducts/',
        method: 'GET',
        success: function (res) {
            showProductData(res);
        },
        error: function (res) {
            console.log(res);
        }
    })
};
onInit();

$(".hover").mouseleave(
    function () {
        $(this).removeClass("hover");
    }
);

// ===== Scroll to Top ====
$(window).scroll(function () {
    if ($(this).scrollTop() >= 50) {    // If page is scrolled more than 50px
        $('#top').fadeIn("fast");       // Fade in the arrow
    } else {
        $('#top').fadeOut("fast");      // Else fade out the arrow
    }
});
$('#top').click(function () {            // When arrow is clicked
    $('body,html').animate({
        scrollTop: 0                   // Scroll to top of body
    }, 500);
});

function showProductData(res) {
    var fromDB = '';
    for (var i in res) {
        fromDB = '<div class="col-xs-4 col-sm-4 col-md-4">' +
            '<figure class="snip1246">' + '<img src="' + res[i].pathToImage + '" alt="sample88"/>' + '' +
            '<figcaption>' + '<h2>' + res[i].name + '</h2><p>' + res[i].description + '</p>' +
            '<div class="price">' + res[i].price + '</div>' +
            '<a href="/viewProduct/' + res[i].id + '" class="view-product"' +
            '<a href="/addToCard/' + res[i].id + '" class="add-to-cart"' +
            ' </sec:authorize> </figcaption> </figure> </div>';
    }
    $('#result').html(fromDB);
}
