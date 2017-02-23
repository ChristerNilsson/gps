setup = -> 
	createCanvas windowWidth,windowHeight

draw = ->
	bg 0.5
	text "started",200,200
	if navigator.geolocation
		navigator.geolocation.getCurrentPosition showPosition
	else
		text "Geolocation is not supported by this browser", 100,100

showPosition = (position) ->
	text position.coords.latitude,100,100
	text position.coords.longitude,100,150
