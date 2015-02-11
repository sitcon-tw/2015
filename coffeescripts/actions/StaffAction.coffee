###
# Staff Action
###

Dispatcher = require '../Dispatcher'
StaffConstant = require '../constants/StaffConstant'

Request = require 'superagent'

StaffAction = {
  load: ->
    Request.get 'https://staff.sitcon.org/api/groups/?format=json', (err, data) ->
      Dispatcher.handleViewAction {
        actionType: StaffConstant.STAFF_LOAD
        staffs: data.body
      }
}

module.exports = StaffAction
