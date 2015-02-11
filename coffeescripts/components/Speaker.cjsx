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
      if (index + 1) % (_itemEachGroup + 1) != 0
        _tmpSpeakerGroup.push(<SpeakerItem speaker={speaker} key={index} />)
      else
        _speakerGroups.push(
          <div className="row no-gutter">
            {_tmpSpeakerGroup}
          </div>
        )
        _tmpSpeakerGroup = []

    _speakerGroups

  render: ->
    (
      <div id="speaker">
        {@buildSpeakerList()}
      </div>
    )
}

module.exports = Speaker
