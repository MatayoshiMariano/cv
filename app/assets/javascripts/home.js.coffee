on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->

    winHeight = $(window).height();
    navBar = $('.cv-navbar')
    $('.cv-row-contact-info').height(winHeight - navBar.outerHeight(true));
    $(".hover").hover (->
      $(this).addClass("flip")
    ), ->
      $(this).removeClass("flip")

$(document).ready on_load
$(window).bind "page:change", on_load