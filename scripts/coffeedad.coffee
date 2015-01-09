# Description:
#   gets tweet from user
#
# Dependencies:
#   "jsdom": "latest"
#
# Configuration:
#   None
#
# Commands:
#   coffee - Show random tweet from @coffee_dad
#
# Author:
#   ryandudek
#

jsdom = require "jsdom"
coffeetweets = "https://twitter.com/coffee_dad"

module.exports = (robot) ->
  robot.hear /coffee/i, (msg) ->
    msg.http(coffeetweets)
      .get() (err, res, body) ->
        document = jsdom.jsdom body, null, features: { "QuerySelector": true, "QuerySelectorAll": true }
        tweet =  msg.random document.querySelectorAll "a.ProfileTweet-timestamp.js-permalink"
        tweet = tweet.href
        tweet = tweet.replace("file:///","")
        msg.send "https://twitter.com/#{tweet}"
        