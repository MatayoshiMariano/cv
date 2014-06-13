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
          #$('#page-effect').css('opacity', '0.3')
          $('#page-effect').fadeOut(2000)
          $('#page').fadeIn(2000)

      return

$(document).ready on_load