###
# Location
#
# @cjsx React.DOM
###

React = require 'react'

StaffAction = require '../actions/StaffAction'
StaffStore = require '../stores/Staffs'

StaffGroup = require './StaffGroup'

Location = React.createClass {
  displayName: 'Location'
  getInitialState: ->
    {
      staffs: []
    }

  _onChange: ->
    @setState { staffs: StaffStore.getAll() }

  componentDidMount: ->
    StaffAction.load()
    StaffStore.addChangeListener @_onChange

  componentWillUnmount: ->
    StaffStore.removeChangeListener @_onChange

  buildStaffGroupList: ->
    @state.staffs.map (group) ->
      (
        <StaffGroup name={group.name} users={group.users} />
      )

  render: ->
    (
      <div id="team">
        {@buildStaffGroupList()}
      </div>
    )
}

module.exports = Location
