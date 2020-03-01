// scroll functions
$(window).scroll(function(e) {

    // add/remove class to navbar when scrolling to hide/show
    $('.navbar')[$(window).scrollTop() >= 150 ? 'addClass' : 'removeClass']('navbar-hide');

});