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
  buildLogo: ->
    if !@props.link
      return (<img src={@getLogo()} className="sponsor-logo" />)

    (
      <a href={@props.link} target="_blank">
          <img src={@getLogo()} className="sponsor-logo" />
        </a>
    )
  render: ->
    (
      <div className={@getColumnSize()}>
        <div className="sponsor">
          {@buildLogo()}
          <div className="sponsor-name">{@props.name}</div>
        </div>
      </div>
    )
}

module.exports = SponsorItem
