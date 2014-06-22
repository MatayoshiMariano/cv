on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->

    winHeight = $(window).height();
    navBar = $('.cv-navbar')
    $('.cv-row-contact-info').height(winHeight - navBar.outerHeight(true));
    $('.cv-introduction').height(winHeight - navBar.outerHeight(true));
    $(".side.front").hover (->
      $(this).css("flip")
    ), ->
      $(this).removeClass("flip")

    #open and close menu when the button is clicked
    button = document.getElementById("cn-button")
    wrapper = document.getElementById("cn-wrapper")
    open = false

    $('#cn-button').click ->
      unless open
        classie.add wrapper, "opened-nav"
      else
        classie.remove wrapper, "opened-nav"
      open = not open
      return

    $('#cn-wrapper').click ->
      classie.remove wrapper, "opened-nav"
      open = false
      return

    $('#about-me').click ->
      debugger
      $('.web-developer').fadeIn(2000);

$(document).ready on_load
