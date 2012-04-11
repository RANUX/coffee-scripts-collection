$ = jQuery



$(document).ready ->
  canvas = $("#myCanvas")
  context = canvas.get(0).getContext("2d")

  resizeCanvas = ->
    canvas.attr "width", $(window).get(0).innerWidth
    canvas.attr "height", $(window).get(0).innerHeight
    context.fillRect 0, 0, canvas.width(), canvas.height()
    return

  $(window).resize(resizeCanvas)
  resizeCanvas()

  return