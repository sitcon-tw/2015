###
# Landing Item
###

React = require 'react'

LandingItem = React.createClass {
  displayName: 'LandingItem'

  getStyle: ->
    {
      backgroundImage: "url('../images/#{@props.bg}')"
    }

  render: ->

    (
      <div className="row">
        <div className="col-md-12">
          <div className="landing-item" style={@getStyle()}>
            <div className="mask">

            </div>
          </div>
        </div>
      </div>
    )
}

module.exports = LandingItem
