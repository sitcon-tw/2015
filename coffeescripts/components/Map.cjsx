###
# Map
#
# @cjsx React.DOM
###

React = require 'react'

{GoogleMapsMixin, Map, Marker} = require('react-google-maps')

SITCONMap = React.createClass {
  getInitialState: ->
    {
      center: new google.maps.LatLng(25.0410096, 121.6118796)
    }
  mixins: [GoogleMapsMixin]
  render: ->
    <div style={height: '100%'}>
      <Map style={height: '100%'} zoom={15} center={@state.center} scrollwheel={false}  />
      <Marker position={@state.center} icon="images/map_pin.png" />
    </div>
}

module.exports = SITCONMap
