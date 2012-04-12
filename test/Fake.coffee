coffee = require "coffee-script"

init = ->
	@name = "fake"
	@preset = 100
	@setup = (num) => @preset = num
	@calculate = (num) => @preset

init.call exports