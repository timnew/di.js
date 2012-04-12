coffee = require "coffee-script"
fs = require "fs"
yaml = require "yaml"
path = require "path"
config = yaml.eval fs.readFileSync "Env.yaml", "utf8"

load = (schema) -> 
	schema ?= process.env.schema
	load.schema = schema
	baseDir= process.cwd()	
	result = {}
	for name, options of config
		fullPath = path.join baseDir, options[schema]
		result[name] = require fullPath		
	result

exports.load = load

for name, obj of load()
	exports[name] = obj
