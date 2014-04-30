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
          $(this).css('display', 'flex')
          $('#page').fadeIn(2000)

      return

$(document).ready on_load