###
# Schedule Action
###

Dispatcher = require '../Dispatcher'
ScheduleConstant = require '../constants/ScheduleConstant'

Request = require 'superagent'


ScheduleAction = {
  load: ->
    Request.get 'https://staff.sitcon.org/api/activities/?format=json', (err, data) ->
      Dispatcher.handleViewAction {
        actionType: ScheduleConstant.SCHEDULE_LOAD
        schedule: data.body
      }
}

module.exports = ScheduleAction
