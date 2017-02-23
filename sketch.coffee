setup = -> 
	createCanvas windowWidth,windowHeight
	print navigator.geolocation
	textSize 72

showPosition = (position) ->
	bg 0.5
	print position
	text position.coords.latitude.toFixed(6),100,100	
	text position.coords.longitude.toFixed(6),100,200
	text position.coords.accuracy,100,300	
	#text position.timestamp,100,400

draw = ->
	if navigator.geolocation
		navigator.geolocation.getCurrentPosition showPosition
	else
		text "Geolocation is not supported by this browser",100,100

