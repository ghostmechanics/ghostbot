# Description:
#   Get the damn months
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot the months - Display the new months
#
# Author:
#   ryandudek

months = [
  "New months:",
  "Janturarby",
  "Febulbrardy",
  "Murch",
  "Avril",
  "Mulk",
  "Dennis",
  "Dennis 3",
  "Augartorb",
  "Donker",
  "Garytober",
  "Garyvember",
  "Garydecember"
  ]

module.exports = (robot) ->
  robot.respond /the months$/i, (msg) ->
    msg.send months.join('\n')
    
  robot.respond /(the date)|today$/i, (msg) ->
    theDate = new Date
    currentMonthNum = theDate.getMonth() + 1
    currentMonth = months[currentMonthNum]
    currentDate = currentMonth + ' ' + theDate.getDate() + ', ' +theDate.getFullYear()
    msg.send currentDate
