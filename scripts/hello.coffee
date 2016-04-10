# 翻訳 2,000,000/monthly
translate = require('./translate')

module.exports = (robot) ->
  
  # response
  robot.router.get '/', (req, res) ->
    res.send '200'

  # en -> ja
  robot.hear /^e (.*)/i, (msg) ->
    translate(msg, 'en')

  # js -> en
  robot.hear /^j (.*)/i, (msg) ->
    translate(msg, 'ja')

  # hoge
  robot.hear /(w|ｗ)$/i, (msg) ->
    msg.send 'はいはい、いい歳こいて草はやすんじゃねーお！'

  # help
  robot.respond /help$/, (msg) ->
    text = 'hear e - ja -> en\nhear j - en -> ja'
    msg.send text