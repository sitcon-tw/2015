###
# Location
#
# @cjsx React.DOM
###

React = require 'react'
Map = require './Map'

Location = React.createClass {
  displayName: 'Location'
  render: ->
    (
      <div id="location">
        <div className="map-area">
          <Map googleMapsApi={google.maps} />
        </div>
      </div>
    )
}

module.exports = Location
