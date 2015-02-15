###
# Parallax Scene
#
# @cjx React.DOM
###

React = require 'react'

ParallaxScene = React.createClass {
  displayName: 'ParallaxScene'
  componentDidMount: ->
    options = @props.options || {}
    @parallax = new Parallax(@getDOMNode(), options)
    @parallax.enable()
  componentWillUnmount: ->
    @parallax.disable()
  render: ->
    (
      <div className="parallax-scene">
        {@props.children}
      </div>
    )
}

module.exports = ParallaxScene
