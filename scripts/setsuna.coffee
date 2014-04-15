# Description:
#   search image
#
# Commands:
#   hubot setsuna <url> - post url

module.exports = (robot) ->
  robot.respond /(setsuna) (.*)/i, (msg) ->
    msg.send "reserving url #{msg.match[2]}"
    q = url: msg.match[2]
    msg.http('http://djbu.ason.as/image')
      .query(q)
      .post() (err, res, body) ->
        result = JSON.parse body
        if result.urls.length > 0
          msg.send "I'm finding some images!"
          for url in result.urls
            msg.send url
        else
          msg.send "Not foud images..."
