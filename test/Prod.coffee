coffee = require "coffee-script"

init = ->
	@name = "prod"
	@calculate = (num) => num

init.call exports