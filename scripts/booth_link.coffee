util = require('util')
cheerio = require('cheerio')

# Reply booth items title and image_link
module.exports = (robot) ->
  robot.hear /#(https:\/\/\w+.booth.pm\/items\/\d+)/, (msg) ->
    msg
    .http(msg.match[1])
    .get() (err, res, body) ->
      if res.statusCode != 200
        msg.send "Couldn't access BOOTH."
      else
        $ = cheerio.load(body)
        title = $('title').text()
        primary_image = $('.photo-gallery img').first().attr('src')
        msg.send title + '\n' + primary_image
