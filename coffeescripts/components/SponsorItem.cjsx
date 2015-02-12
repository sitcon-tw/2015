###
# Sponsor Item
#
# @cjsx React.DOM
###

React = require 'react'

SponsorItem = React.createClass {
  displayName: 'SponsorItem'
  getColumnSize: ->
    "col-md-#{@props.columnSize}"
  getLogo: ->
    "images/sponsor/#{@props.logo}"
  render: ->
    (
      <div className={@getColumnSize()}>
        <div className="sponsor">
          <a href={@props.link} target="_blank">
            <img src={@getLogo()} className="sponsor-logo" />
          </a>
          <div className="sponsor-name">{@props.name}</div>
        </div>
      </div>
    )
}

module.exports = SponsorItem
