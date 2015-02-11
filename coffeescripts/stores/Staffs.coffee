###
# Staff Store
###

Dispatcher = require '../Dispatcher'
EventEmitter = require('events').EventEmitter
StaffConstant = require '../constants/StaffConstant'

assign = require 'react/lib/Object.assign'

# Store Event Constants
CHANGE_EVENT = 'CHANGE'

_staffs = []

dispatcher = (payload) ->
  action = payload.action

  switch action.actionType
    when StaffConstant.STAFF_LOAD
      _staffs = action.staffs
      StaffStore.emitChange()

  # Dispatcher receive 'true' return to work
  true

# CoffeeScript not work with extends 'prototype', so use react assign helper
StaffStore = assign {}, EventEmitter.prototype, {
  getAll: ->
    _staffs

  emitChange: ->
    @emit CHANGE_EVENT

  addChangeListener: (callback) ->
    @on CHANGE_EVENT, callback

  removeChangeListener: (callback) ->
    @removeListener CHANGE_EVENT, callback

  dispatcherIndex: Dispatcher.register dispatcher
}

module.exports = StaffStore


