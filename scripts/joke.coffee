# Description:
#   That's the joke.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   that's the joke - Display Rainier killing it on stage
#
# Author:
#   johnmichel

jokes = [
  "https://www.youtube.com/watch?v=xECUrlnXCqk",
  "http://f.cl.ly/items/3N0P3r400o231M0Z0G16/thatsthejoke.jpg"
]

module.exports = (robot) ->
  robot.hear /(thats the joke|that's the joke)/i, (msg) ->
    msg.send msg.random jokes
