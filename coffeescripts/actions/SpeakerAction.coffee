###
# Speaker Action
###

Dispatcher = require '../Dispatcher'
SpeakerConstant = require '../constants/SpeakerConstant'

Request = require 'superagent'


SpeakerAction = {
  load: ->
    Request.get 'https://staff.sitcon.org/submission/api/all', (err, data) ->
      Dispatcher.handleViewAction {
        actionType: SpeakerConstant.SPEAKER_LOAD
        speakers: data.body.submissions
      }
}

module.exports = SpeakerAction
