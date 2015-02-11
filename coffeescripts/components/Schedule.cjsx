###
# Schedule
#
# @cjsx React.DOM
###

React = require 'react'

ScheduleAction = require '../actions/ScheduleAction'
ScheduleStore = require '../stores/Schedule'

Schedule = React.createClass {
  displayName: 'Schedule'
  getInitialState: ->
    {
      schedule: []
    }

  _onChange: ->
    @setState { schedule: ScheduleStore.getAll() }
    console.log @state.schedule

  componentDidMount: ->
    ScheduleAction.load()
    ScheduleStore.addChangeListener @_onChange

  componentWillUnmount: ->
    ScheduleStore.removeChangeListener @_onChange

  render: ->
    (
      <div id="schedule">
        <div className="row">
          <div className="col-md-12 text-center">
            <img src="images/comingsoon.png" />
          </div>
        </div>
      </div>
    )
}

module.exports = Schedule
