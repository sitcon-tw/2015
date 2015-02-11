###
# Schedule
#
# @cjsx React.DOM
###

React = require 'react'

Schedule = React.createClass {
  displayName: 'Schedule'
  render: ->
    (
      <div id="schedule">
        <div className="row">
          <div className="col-md-12 text-center">
            <img src="images/commingsoon.png" />
          </div>
        </div>
      </div>
    )
}

module.exports = Schedule
