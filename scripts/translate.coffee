MsTranslator = require('mstranslator')

module.exports = (msg, la) ->
  if la is undefined
    return

  client = new MsTranslator({
    client_id: process.env.MS_TRANSLATOR_CLIENT_ID,
    client_secret: process.env.MS_TRANSLATOR_SECRET_ID
  }, true)
  text = msg.match[1]
  params = {
    text: text,
    to: la
  }
  client.translate params, (err, data) ->
    msg.send data