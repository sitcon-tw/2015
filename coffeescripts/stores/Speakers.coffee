###
# Speaker Store
###

Dispatcher = require '../Dispatcher'
EventEmitter = require('events').EventEmitter
SpeakerConstant = require '../constants/SpeakerConstant'

assign = require 'react/lib/Object.assign'

# Store Event Constants
CHANGE_EVENT = 'CHANGE'

# Store Data
_spakers = []

dispatcher = (payload) ->
  action = payload.action

  switch action.actionType
    when SpeakerConstant.SPEAKER_LOAD
      _spakers = action.speakers
      SpeakerStore.emitChange()

  # Dispatcher receive 'true' return to work
  true

# CoffeeScript not work with extends 'prototype', so use react assign helper
SpeakerStore = assign {}, EventEmitter.prototype, {
  getAll: ->
    _spakers

  emitChange: ->
    @emit CHANGE_EVENT

  addChangeListener: (callback) ->
    @on CHANGE_EVENT, callback

  removeChangeListener: (callback) ->
    @removeListener CHANGE_EVENT, callback

  dispatcherIndex: Dispatcher.register dispatcher
}

module.exports = SpeakerStore


