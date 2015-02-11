###
# Schedule Item
#
# @cjsx React.DOM
###

React = require 'react'

ScheduleItem = React.createClass {
  displayName: 'ScheduleItem'

  getSubject: ->
    @props.title || @props.description

  isTalk: ->
    @props.submission

  getSessionClass: ->
    return "session is-talk" if @isTalk()
    "session"

  getSessionMeta: ->
    return if !@isTalk()

    (
      <div className="session-meta">
        <div className="session-speaker">{@props.speaker}</div>
        <div className="session-abstract">{@props.abstract}</div>
      </div>
    )

  render: ->
    (
      <div className="col-md-6">
        <div className={@getSessionClass()}>
          <div className="session-room">{@props.room}</div>
          <div className="session-subject">{@getSubject()}</div>
          {@getSessionMeta()}
        </div>
      </div>
    )
}

module.exports = ScheduleItem
