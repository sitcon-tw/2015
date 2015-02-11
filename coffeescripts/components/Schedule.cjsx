###
# Schedule
#
# @cjsx React.DOM
###

React = require 'react'

ScheduleAction = require '../actions/ScheduleAction'
ScheduleStore = require '../stores/Schedule'

ScheduleTimeRow = require './ScheduleTimeRow'

Schedule = React.createClass {
  displayName: 'Schedule'
  getInitialState: ->
    {
      schedule: []
      timebasedSchedule: {}
    }

  _onChange: ->
    @setState {
      schedule: ScheduleStore.getAll()
      timebasedSchedule: ScheduleStore.getTimebaseSchedule()
    }

  componentDidMount: ->
    ScheduleAction.load()
    ScheduleStore.addChangeListener @_onChange

  componentWillUnmount: ->
    ScheduleStore.removeChangeListener @_onChange

  buildSchedule: ->
    _scheduleTime = []
    for time, activities of @state.timebasedSchedule
      _scheduleTime.push(
        <ScheduleTimeRow {...activities} />
      )

    _scheduleTime

  render: ->
    (
      <div id="schedule">
        {@buildSchedule()}
      </div>
    )
}

module.exports = Schedule
