###
# Schedule Item
#
# @cjsx React.DOM
###

React = require 'react'

# Panel Speaker Data
#
# API not support Multi Speaker, so manual patch it
panelSpeaker = {
  host: ['林旅強 (Richard Lin)']
  talker: ['黃育綸教授', '張業永先生', '黃一晉 (Denny Huang)']
}

ScheduleItem = React.createClass {
  displayName: 'ScheduleItem'

  getSubject: ->
    @props.title || @props.description

  isTalk: ->
    @props.submission

  getSessionClass: ->
    return "session is-talk" if @isTalk()
    "session"

  buildPanelSpeaker: ->
    host = panelSpeaker['host'].map (name, key) ->
      (
        <span className="session-speaker" key={key}>{name}</span>
      )

    talker = panelSpeaker['talker'].map (name, key) ->
      (
        <span className="session-speaker" key={key}>{name}</span>
      )

    (
      <div className="session-panel-speaker">
        <div className="session-panel-talker">主持人：{host}</div>
        <div className="session-panel-talker">與談人：{talker}</div>
      </div>
    )

  getSepaker: ->
    if @getSubject() == "座談會" and @props.speaker
      return @buildPanelSpeaker()

    (
      <div className="session-speaker">{@props.speaker}</div>
    )

  getSessionMeta: ->
    return if !@isTalk()

    (
      <div className="session-meta">
        {@getSepaker()}
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
