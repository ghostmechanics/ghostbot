# Description:
#   Wolvin Me
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot wolvin me - Display a randon Chuck Norris
#
# Author:
#   pingles

wolvins = [
  "http://img3.wikia.nocookie.net/__cb20080312162141/uncyclopedia/images/d/dc/Chuck-norris-002.jpg",
  "http://www.empireonline.com/images/uploaded/chuck-norris-uzis.jpg",
  "http://a57.foxnews.com/global.fncstatic.com/static/managed/img/Entertainment/2010/876/493/Chuck%20Norris%201995%20kjdlaksd.jpg?ve=1&tl=1",
  "http://wiki.erepublik.com/images/7/70/-Chuck_Norris-_01.jpg",
  "http://i2.kym-cdn.com/entries/icons/original/000/000/244/chuck_norris.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/b/b1/Chuck_Norris,_The_Delta_Force_1986.jpg",
  "http://transparent-aluminium.net/wp-content/uploads/2013/06/Chuck-Norris-Tuesday-2.jpg",
  "http://randompicdumps.com/wp-content/uploads/2011/05/chuck-norris-facts-4.jpg",
  "http://content.artofmanliness.com/uploads/2008/11/chuck_norris.jpg",
  "http://static.comicvine.com/uploads/scale_small/11111/111111271/3065173-chuck-norris-meme.jpg",
  "http://media.techworld.com/cmsdata/news/3213248/chucknorris.jpg",
  "http://static.comicvine.com/uploads/original/11111/111111327/3588180-chuck_norris_bday.jpg",
  "http://www.bizpacreview.com/wp-content/uploads/2013/11/roundhouse-kick-chuck-norris.jpg",
  "http://ll-media.tmz.com/2012/06/26/0626-chuck-norris-rainbow-article-3.jpg",
  "http://smg.photobucket.com/user/shakespeares_sister/media/shakes6/cnkick1.jpg.html",
  "http://whowouldwinafight.com/wp-includes/images/contestants/chuck-norris.png",
  "http://www.chucknorris.com/store/cn%20old%20pages/photos_files/karate-5.jpg",
  "http://i28.photobucket.com/albums/c219/talk2action/chuck_3-1.png",
  "http://cdn.screenrant.com/wp-content/uploads/No-Expendables-3-for-Chuck-Norris.jpg",
  "http://media1.break.com/breakstudios/2012/2/20/delta.jpg"
]

module.exports = (robot) ->
  robot.hear /hubot wolvin me/i, (msg) ->
    msg.send msg.random wolvins