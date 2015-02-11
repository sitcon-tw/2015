###
# Application Component
#
# @cjsx React.DOM
###

React = require 'react'

Router = require 'react-router'
RouteHandler = Router.RouteHandler

TransitionGroup = require 'react/lib/ReactCSSTransitionGroup'

Navigation = require './Navigation'
Footer = require './Footer'

App = React.createClass {
  displayName: 'App'
  mixins: [ Router.State ]
  render: ->
    name = @getRoutes().reverse()[0].name
    (
      <div>
        <Navigation />
        <div className="container">
          <TransitionGroup component="div" transitionName="page">
            <RouteHandler key={name} />
          </TransitionGroup>
        </div>
        <Footer />
      </div>
    )
}

module.exports = App
