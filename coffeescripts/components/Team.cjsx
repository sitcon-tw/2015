###
# Location
#
# @cjsx React.DOM
###

React = require 'react'

StaffAction = require '../actions/StaffAction'
StaffStore = require '../stores/Staffs'

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

  render: ->
    (
      <div id="team">
        <div className="row">
          <div className="col-md-12 text-center">
            <img src="images/comingsoon.png" />
          </div>
        </div>
      </div>
    )
}

module.exports = Location
