###
# Schedule Action
###

Dispatcher = require '../Dispatcher'
ScheduleConstant = require '../constants/ScheduleConstant'

Request = require 'superagent'


ScheduleAction = {
  load: ->
    Request.get './json/activities.json', (err, data) ->
      Dispatcher.handleViewAction {
        actionType: ScheduleConstant.SCHEDULE_LOAD
        schedule: data.body
      }
}

module.exports = ScheduleAction
