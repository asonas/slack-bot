# Description:
#   post queuing server
#
# Commands:
#   hubot music <url> - post url

module.exports = (robot) ->
  robot.respond /(music) (.*)/i, (msg) ->
    q = url: msg.match[2]
    msg.http('http://djbu.ason.as/music')
      .query(q)
      .post() (err, res, body) ->
        switch res.statusCode
          when 200
            msg.send "queuing!"
          when 404
            msg.send "Not foud..."
          when 400
            msg.send "Bad request..."
          else
            msg.send "server down? cc/ @asonas"
