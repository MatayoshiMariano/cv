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

    infoTransition = (id, classDiv, finalPosition) ->
      $(id).click ->
        if !$(classDiv).is(':animated')
          top = Math.round(Math.random() * 65 + 10);
          left = Math.round(Math.random() * 65 + 10);
          position = {'top': top.toString() + "%", 'left': left.toString() + "%"};
          $(classDiv).css(position)
          $(classDiv).fadeIn(2000, 'swing', ->
            $(classDiv).css(finalPosition);
            $(classDiv).fadeOut(8000, ->
              $(classDiv).removeClass('info-transition')
            );
          );

    positionAboutMe = {'top': '13%', 'left': '5%'};
    positionStudent = {'top': '40%', 'left': '5%'};
    positionTeacher = {'top': '10%', 'left': '40%'};
    positionWebDev = {'top': '15%', 'left': '66%'};
    positionAaaj = {'top': '40%', 'left': '65%'};

    infoTransition('#about-me', '.about-me', positionAboutMe)
    infoTransition('#student', '.student', positionStudent)
    infoTransition('#teacher', '.teacher', positionTeacher)
    infoTransition('#web-developer', '.web-developer', positionWebDev)
    infoTransition('#aaaj-fan', '.aaaj-fan', positionAaaj)


$(document).ready on_load
