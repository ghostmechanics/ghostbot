# Description:
#   Carlton Celebration
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot dance - Display a dancing Carlton
#
# Author:
#   pingles

carltons = [
  "http://media.tumblr.com/tumblr_lrzrlymUZA1qbliwr.gif",
  "http://3deadmonkeys.com/gallery3/var/albums/random_stuff/Carlton-Dance-GIF.gif",
  "http://gifsoup.com/webroot/animatedgifs/987761_o.gif",
  "http://gifsoup.com/view1/1307943/carlton-banks-dance-o.gif",
  "http://s2.favim.com/orig/28/carlton-banks-dance-Favim.com-239179.gif",
  "http://gifsoup.com/webroot/animatedgifs/131815_o.gif",
  "http://f.cl.ly/items/2a121m1B0X3b1S1H241o/carlton.gif",
  "http://f.cl.ly/items/3m2y2l3m0i1I0q041Z2s/dwts_carlton.gif"
]

module.exports = (robot) ->
  robot.respond /\b(dance|happy)\b/i, (msg) ->
    msg.send msg.random carltons
