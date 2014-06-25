on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->

    $(document).ready ->
      $('#page-effect').textillate
        minDisplayTime: 2000
        in: {
          effect: 'fadeIn',
        }
        callback: ->
          $('#page-effect').css('display', 'flex')
          $('#page-effect').css('color', 'grey')
          $('#page-effect').addClass('signature-transition')
          winHeight = $(window).height();
          navBar = $('.cv-navbar')
          $('.cv-introduction').height(winHeight - navBar.outerHeight(true));
          if navBar.outerHeight(true) == 0
            $('.cv-introduction').height(winHeight - 60)
          $('#page').fadeIn(2000, ->
            winHeight = $(window).height();
            navBar = $('.cv-navbar')
            $('.cv-introduction').height(winHeight - navBar.outerHeight(true));
          )
      return

$(document).ready on_load