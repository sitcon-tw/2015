###
# Application Component
#
# @cjsx React.DOM
###

React = require 'react'

Router = require 'react-router'
RouteHandler = Router.RouteHandler

Navigation = require './Navigation'
Footer = require './Footer'

App = React.createClass {
  displayName: 'App'
  render: ->
    (
      <div>
        <Navigation />
        <div className="container">
          <RouteHandler />
        </div>
        <Footer />
      </div>
    )
}

module.exports = App
