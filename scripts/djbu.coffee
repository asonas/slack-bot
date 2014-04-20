# Description:
#   post queuing server
#
# Commands:
#   hubot music <url> - post url

module.exports = (robot) ->
  robot.hear /^#(https:\/\/soundcloud.com\/[a-z0-9\/-]*)/, (msg) ->
    q = url: msg.match[1]
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
