###
# Staff Item
#
# @cjsx React.DOM
###

React = require 'react'

StaffItem = React.createClass {
  displayName: 'StaffItem'
  getAvatarUrl: ->
    return "https://staff.sitcon.org#{@props.avatar}" if @props.avatar.indexOf('/') is 0
    "#{@props.avatar}&s=200"
  render: ->
    (
      <div className="col-md-2">
        <div className="staff">
          <div className="staff-avatar-frame">
            <img src={@getAvatarUrl()} className="staff-avatar" />
          </div>
          <div className="staff-name">
            {@props.display_name}
          </div>
        </div>
      </div>
    )
}

module.exports = StaffItem
