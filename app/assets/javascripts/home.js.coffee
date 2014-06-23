on_load = ->
  load
    controllers:
      statics: ["home"]
  , (controller, action) ->

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

    infoTransition = (id, classDiv) ->
      $(id).click ->
        top = Math.round(Math.random() * 70 + 10);
        left = Math.round(Math.random() * 70 + 10);
        position = {'top': top.toString() + "%", 'left': left.toString() + "%"};
        $(classDiv).css(position)
        $(classDiv).fadeIn(2000, 'swing', ->
          if top > 50
            topFinal = top - Math.round(Math.random() * 40 + 10);
          else
            topFinal = top + Math.round(Math.random() * 40 + 10);
          if left > 50
            leftFinal = top - Math.round(Math.random() * 40 + 10);
          else
            leftFinal = top + Math.round(Math.random() * 40 + 10);
          position = {'top': topFinal.toString() + "%", 'left': leftFinal.toString() + "%"};
          $(classDiv).css(position);
          $(classDiv).fadeOut(3000, ->
            $(classDiv).removeClass('info-transition')
          );
        );

    infoTransition('#web-developer', '.web-developer')
    infoTransition('#aaaj-fan', '.aaaj-fan')
    infoTransition('#about-me', '.about-me')
    infoTransition('#student', '.student')
    infoTransition('#teacher', '.teacher')


$(document).ready on_load
