# Description:
#   post queuing server
#
# Commands:
#   hubot music <url> - post url

module.exports = (robot) ->
  robot.respond /(music) (.*)/i, (msg) ->
    msg.send "reserving url #{msg.match[2]}"
    q = url: msg.match[2]
    msg.http('http://djbu.ason.as/music')
      .query(q)
      .post() (err, res, body) ->
        msg.send "queuing!"
