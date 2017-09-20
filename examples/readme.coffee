fb = require("pitft")("/dev/fb1", true)
fb.clear()
xMax = fb.size().width
yMax = fb.size().height

update = ->
  fb.color(1, 1, 1)
  fb.font("fantasy", 20)
  fb.text(xMax/2, yMax*2/3, "To use one of these examples", true)
  fb.font("fantasy", 20)
  fb.text(xMax/2, yMax*1/3, "set the EXAMPLE environment variable.", true)
  fb.blit()

setInterval(update, 1000)
