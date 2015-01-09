# Description:
#   gets tweet from user
#
# Dependencies:
#   "jsdom": "~0.2.13"
#
# Configuration:
#   None
#
# Commands:
#   coffee - Show random tweet from @coffee_dad
#
# Author:
#   RyanDudek
#

jsdom = require "jsdom"
coffeetweets = "https://twitter.com/coffee_dad"

module.exports = (robot) ->
  robot.hear /coffee/i, (msg) ->
    msg.http(coffeetweets)
      .path("/")
      .get() (err, res, body) ->
        document = jsdom.jsdom body, null, features: { "QuerySelector": true, "QuerySelectorAll": true }
        tweet =  msg.random document.querySelectorAll "div.ProfileCanopy-avatar img"
        console.log(tweet)
        msg.send "#{coffeetweets}/#{tweet.src}"
        