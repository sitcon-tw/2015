###
# Staff Action
###

Dispatcher = require '../Dispatcher'
StaffConstant = require '../constants/StaffConstant'

Request = require 'superagent'

StaffAction = {
  load: ->
    Request.get '../json/staffgroups.json', (err, data) ->
      Dispatcher.handleViewAction {
        actionType: StaffConstant.STAFF_LOAD
        staffs: data.body
      }
}

module.exports = StaffAction
