###
# Home
###

React = require 'react'

LandingItem = require './LandingItem'

Home = React.createClass {
  display: 'HomePage'
  render: ->
    (
      <div id="about">
        <LandingItem bg="landing_bg.jpg" />
        <LandingItem bg="landing_bg2.jpg" />
      </div>
    )
}

module.exports = Home
