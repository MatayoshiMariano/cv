do_on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->
    flipBox = $("#flipbox")

    $(".flip").hover (->
      $(this).find(".card").addClass("flipped")
    ), ->
      $(this).find(".card").removeClass("flipped")


    flipBox.hover (->
      $(this).flip
        direction: "tb"
        content: "this is my new content"
    ), ->
      $(this).revertFlip


$(document).ready do_on_load