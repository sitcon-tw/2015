###
# Speaker
#
# @cjsx React.DOM
###

React = require 'react'

SpeakerAction = require '../actions/SpeakerAction'
SpeakerStore = require '../stores/Speakers'

SpeakerItem = require './SpeakerItem'

Speaker = React.createClass {
  displayName: 'Speaker'
  getInitialState: ->
    {
      speakers: SpeakerStore.getAll()
    }

  _onChange: ->
    @setState { speakers: SpeakerStore.getAll() }

  componentDidMount: ->
    SpeakerAction.load()
    SpeakerStore.addChangeListener @_onChange

  componentWillUnmount: ->
    SpeakerStore.removeChangeListener @_onChange

  buildSpeakerList: ->
    _speakerGroups = []
    _itemEachGroup = 3

    _tmpSpeakerGroup = []

    for speaker, index in @state.speakers
      _tmpSpeakerGroup.push(<SpeakerItem speaker={speaker} key={index} />)

      if (index + 1) % _itemEachGroup is 0
        _speakerGroups.push(
          <div className="row no-gutter">
            {_tmpSpeakerGroup}
          </div>
        )
        _tmpSpeakerGroup = []

    if (index + 1) % _itemEachGroup > 0

        _speakerGroups.push(
          <div className="row no-gutter">
            {_tmpSpeakerGroup}
          </div>
        )

    _speakerGroups

  render: ->
    (
      <div id="speaker">
        {@buildSpeakerList()}
      </div>
    )
}

module.exports = Speaker
