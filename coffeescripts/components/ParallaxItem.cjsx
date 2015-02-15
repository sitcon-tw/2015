###
# Parallax Item
#
# @cjsx React.DOM
###

React = require 'react'

ParallaxItem = React.createClass {
  displayName: 'ParallaxItem'
  render: ->
    (
      <div className="layer" data-depth={@props.depth} id={@props.id}>
        {@props.children}
      </div>
    )
}

module.exports = ParallaxItem
