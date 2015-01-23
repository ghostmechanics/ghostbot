# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   trap - Display an Admiral Ackbar piece of wonder
#
# Author:
#   brilliantfantastic

ackbars = [
  "http://f.cl.ly/items/2n1d2C3T1f4307013C43/itsatrap.jpg",
  "http://farm4.static.flickr.com/3572/3637082894_e23313f6fb_o.jpg",
  "http://www.youtube.com/watch?v=dddAi8FF3F4",
  "http://6.asset.soup.io/asset/0610/8774_242b_500.jpeg",
  "http://files.g4tv.com/ImageDb3/279875_S/steampunk-ackbar.jpg",
  "http://farm6.staticflickr.com/5126/5725607070_b80e61b4b3_z.jpg",
  "http://farm6.static.flickr.com/5291/5542027315_ba79daabfb.jpg",
  "http://farm6.staticflickr.com/5250/5216539895_09f963f448_z.jpg"
]

module.exports = (robot) ->
  robot.hear /it'?s a trap\b/i, (msg) ->
    msg.send msg.random ackbars
  robot.hear /it'?s a tarp\b/i, (msg) ->
    msg.send "http://f.cl.ly/items/0e1b2i3Z1I3q321W0U0H/itsatarp.jpg"
