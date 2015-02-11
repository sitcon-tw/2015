###
# Staff Item
#
# @cjsx React.DOM
###

React = require 'react'

StaffItem = React.createClass {
  displayName: 'StaffItem'
  getAvatarUrl: ->
    "#{@props.avatar}&s=200"
  render: ->
    (
      <div className="col-md-2">
        <div className="staff">
          <img src={@getAvatarUrl()} className="staff-avatar" />
          <div className="staff-name">
            {@props.display_name}
          </div>
        </div>
      </div>
    )
}

module.exports = StaffItem
