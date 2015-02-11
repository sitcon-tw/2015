###
# Schedule Time Row
#
# @cjsx React.DOM
###

React = require 'react'

ScheduleItem = require './ScheduleItem'

TimeRow = React.createClass {
  displayName: 'ScheduleTimeRow'

  formatTime: (time)->
    return "0#{time}" if time.toString().length < 2
    time

  getFormatedTime: (timeObject) ->
    "#{@formatTime(timeObject.getHours())}:#{@formatTime(timeObject.getMinutes())}"

  getTimeRange: ->
    startTime = new Date(@props.start)
    endTime = new Date(@props.end)

    "#{@getFormatedTime(startTime)} - #{@getFormatedTime(endTime)}"

  buildScheduleItem: ->
    _rowGroup = []
    _items = []
    count = 1
    itemToGroup = 2

    for room, activity of @props.activities
      _items.push (
        <ScheduleItem {...activity} />
      )

      if count % itemToGroup is 0
        _rowGroup.push (
          <div className="row">
            {_items}
          </div>
        )
        _items = []

      count++

    if _items.length > 0
      _rowGroup.push (
        <div className="row">
          {_items}
        </div>
      )

    _rowGroup

  render: ->
    (
      <div>
        <div className="row">
          <div className="col-md-12">
            <h1 className="schedule-time">{@getTimeRange()}</h1>
          </div>
        </div>
        {@buildScheduleItem()}
      </div>
    )
}

module.exports = TimeRow


