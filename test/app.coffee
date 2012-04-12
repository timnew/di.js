coffee = require "coffee-script"
di = require "../lib/di.coffee" 

console.log "Schema is #{ process.env.schema }"

module = di.module;

console.log "The module loaded is #{ module.name }"
module.setup(100) if module.setup?
console.log "calculate 5 = #{ module.calculate 5 }"
 