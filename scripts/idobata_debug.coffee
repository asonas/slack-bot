util = require 'util'
module.exports = (robot) ->
  robot.respond /debug( snippet)?/, (msg) ->
    if msg.match[1]?
      msg.send '```\n' + util.inspect(msg) + '\n```'
    else
      msg.send util.inspect msg
