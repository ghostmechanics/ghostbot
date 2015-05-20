# Description:
#   The butthurt test (everybody is always butthurt about everything at all times)
#
# Commands:
#   hubot is <user> butthurt?
#   hubot <user> is butthurt
#
# Examples:
#   hubot is tim butthurt?
#   hubot tim is butthurt

module.exports = (robot) ->

  getAmbiguousUserText = (users) ->
    "Be more specific, I know #{users.length} people named like: #{(user.name for user in users).join(", ")} (and they are all butthurt)"

  robot.hear /are you butthurt\?*$/i, (msg) ->
    msg.send "Who isn't?"

  robot.hear /you are butthurt\?*$/i, (msg) ->
    msg.send "Duhhhh"

  robot.listen /is @?([\w .\-]+)\?* butthurt\?*$/i, (msg) ->
    joiner = ', '
    name = msg.match[1].trim()

    if name is robot.name
      msg.send "I'm definitely not thinking about butts"
    else if name is "bell"
      msg.send "bell is the worst ever (and is totally butthurt)"
    else
      users = robot.brain.usersForFuzzyName(name)
      if users.length is 1
        user = users[0]
        msg.send "#{name} is definitely butthurt."
      else if users.length > 1
        msg.send getAmbiguousUserText users
      else
        msg.send "I've never heard of #{name}, but they are definitely butthurt"

  robot.hear /@?([\w .\-_]+) is butthurt[.!]*$/i, (msg) ->
    joiner = ', '
    name = msg.match[1].trim()

    if name is robot.name
      msg.send "I'm definitely not thinking about butts"
    else if name is "bell"
      msg.send "bell is the worst ever (and is totally butthurt)"
    else
      users = robot.brain.usersForFuzzyName(name)
      if users.length is 1
        user = users[0]
        msg.send "Obviously #{name} is butthurt."
      else if users.length > 1
        msg.send getAmbiguousUserText users
      else
        msg.send "I've never heard of #{name}, but they are totally butthurt"

