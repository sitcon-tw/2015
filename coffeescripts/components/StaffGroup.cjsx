###
# Staff Group
#
# @cjsx React.DOM
###

React = require 'react'

StaffItem = require './StaffItem'

StaffGroup = React.createClass {
  displayName: 'StaffGroup'
  buildStaffList: ->
    @props.users.map (user) ->
      (
        <StaffItem {...user.profile} />
      )

  render: ->
    (
      <div className="staff-group">
        <div className="row">
          <div className="col-md-12">
            <h1 className="staff-group-title">{@props.name}</h1>
          </div>
        </div>
        <div className="row">
          {@buildStaffList()}
        </div>
      </div>
    )
}

module.exports = StaffGroup
