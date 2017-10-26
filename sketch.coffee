# Fungerar med Chrome, även på iPad och iPhone

setup = -> 
	createCanvas windowWidth,windowHeight
	textSize 72

showPosition = (position) ->
	bg 0.5
	text position.coords.latitude.toFixed(6),100,100	
	text position.coords.longitude.toFixed(6),100,200
	text position.coords.accuracy,100,300	
	if position.coords.heading
		text position.coords.heading,100,400
	if position.coords.speed
		text position.coords.speed,100,500	
	#text position.timestamp,100,400

draw = ->
	if navigator.geolocation
		navigator.geolocation.getCurrentPosition showPosition
	else
		text "Geolocation is not supported by this browser",100,100