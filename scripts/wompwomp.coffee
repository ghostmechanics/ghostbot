# Description:
#   WOMP WOMP Debbie Downer
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   womp - Display a Debbie Downer
#
# Author:
#   smt

debbiedowners = [
  "http://cl.ly/Uh2H/7596082.jpg",
  "http://cl.ly/Uh1q/DebbieDownerThanksgiving_post.jpg",
  "http://cl.ly/Uh9s/SNL_1432_11_A_Very_Downer_Christmas.png",
  "http://cl.ly/UhMT/tumblr_ldu2hedu2D1qdubemo1_500.gif",
  "http://cl.ly/Uh0s/mike-breaking-bad.jpg"
]

module.exports = (robot) ->
  robot.hear /\b(womp|wah)\b/i, (msg) ->
    msg.send msg.random debbiedowners
