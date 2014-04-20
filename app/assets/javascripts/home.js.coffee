do_on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->
    $(".hover").hover (->
      $(this).addClass("flip")
    ), ->
      $(this).removeClass("flip")

$(document).ready do_on_load