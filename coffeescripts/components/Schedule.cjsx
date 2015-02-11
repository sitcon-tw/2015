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
            <img src="images/comingsoon.png" />
          </div>
        </div>
      </div>
    )
}

module.exports = Schedule
