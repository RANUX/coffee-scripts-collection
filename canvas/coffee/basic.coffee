$ = jQuery

$(document).ready ->
  canvas = $("#myCanvas")
  context = canvas.get(0).getContext("2d")

  context.strokeStyle = "rgb(255, 0, 0)"
  context.fillRect 40, 40, 20, 20
  context.strokeRect 80, 80, 20, 20

  context.strokeStyle = "rgb(0, 0, 0)"

  # lines
  context.lineWidth = 5; # make line thick
  context.beginPath()
  context.moveTo(80, 40)
  context.lineTo(200, 40)
  context.closePath()
  context.stroke()

  # change color
  context.fillStyle = "rgb(255, 0, 0)"

  # circle
  context.beginPath() # Start the path
  context.arc(230, 90, 20, 0, Math.PI*2, false) # Draw a circle
  context.closePath() # Close the path
  context.fill()      # Fill the path

  # text
  text = "Hello, World!"
  context.font = "italic 30px serif"
  context.fillText text, 10, 150
  context.font = "60px serif"
  context.strokeText text, 200, 150

  # clear
  context.clearRect 200, 135, 500, 500

  cleanBtn = $('#cleanCanvasBtn')
  cleanBtn.click(
    (event) ->
      canvas.attr("width", canvas.width())
      canvas.attr("height", canvas.height())
      return
  )

  return
