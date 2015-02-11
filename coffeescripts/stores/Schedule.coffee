###
# Schedule Store
###

Dispatcher = require '../Dispatcher'
EventEmitter = require('events').EventEmitter
ScheduleConstant = require '../constants/ScheduleConstant'

assign = require 'react/lib/Object.assign'

# Store Event Constants
CHANGE_EVENT = 'CHANGE'

_schedule = []
_groupedSchedule = {}

groupSchedule = (scheduleArray) ->
  newSchedule = {}
  for activity in scheduleArray
    time = activity.start
    newSchedule[time] = {} if !newSchedule[time]
    newSchedule[time]['activities'] = {} if !newSchedule[time]['activities']
    newSchedule[time]['activities'][activity.room] = activity
    newSchedule[time]['start'] = activity.start
    newSchedule[time]['end'] = activity.end

  newSchedule

dispatcher = (payload) ->
  action = payload.action

  switch action.actionType
    when ScheduleConstant.SCHEDULE_LOAD
      _schedule = action.schedule
      _groupedSchedule = groupSchedule(action.schedule)
      ScheduleStore.emitChange()

  # Dispatcher receive 'true' return to work
  true

# CoffeeScript not work with extends 'prototype', so use react assign helper
ScheduleStore = assign {}, EventEmitter.prototype, {
  getAll: ->
    _schedule

  getTimebaseSchedule: ->
    _groupedSchedule

  emitChange: ->
    @emit CHANGE_EVENT

  addChangeListener: (callback) ->
    @on CHANGE_EVENT, callback

  removeChangeListener: (callback) ->
    @removeListener CHANGE_EVENT, callback

  dispatcherIndex: Dispatcher.register dispatcher
}

module.exports = ScheduleStore


