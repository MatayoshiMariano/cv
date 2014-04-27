on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->

    winHeight = $(window).height();
    navBar = $('.cv-navbar')
    $('.cv-row-contact-info').height(winHeight - navBar.outerHeight(true));
    $('.cv-introduction').height(winHeight - navBar.outerHeight(true));
    $(".hover").hover (->
      $(this).addClass("flip")
    ), ->
      $(this).removeClass("flip")

    #open and close menu when the button is clicked
    button = document.getElementById("cn-button")
    wrapper = document.getElementById("cn-wrapper")
    open = false

    $('#cn-button').click ->
      unless open
        @innerHTML = "Close"
        classie.add wrapper, "opened-nav"
      else
        @innerHTML = "Menu"
        classie.remove wrapper, "opened-nav"
      open = not open
      return

$(document).ready on_load
