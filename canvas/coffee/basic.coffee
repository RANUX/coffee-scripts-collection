$ = jQuery

$(document).ready ->
  canvas = $("#myCanvas")
  context = canvas.get(0).getContext("2d")
  context.fillRect 40, 40, 100, 100

