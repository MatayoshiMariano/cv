$(document).ready(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    var target = $(this.hash);
    plus = 0
    // if($(window).scrollTop() == 0 && $(this).parent().parent().parent().attr('id') == 'top-bar-for-small-only') {
    //   plus = $(this).parent().parent().parent().height()
    // }
    if (target.length) {
      $('html, body').animate({
        // scrollTop: target.offset().top - 100 - plus
        scrollTop: target.offset().top - 100
      }, 1000);
      return false;
    }
  });

})
