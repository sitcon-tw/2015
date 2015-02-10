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

  getContentClass: ->
    if @props.contentAlign is "right"
      "landing-item-content is-right"
    else
      "landing-item-content"

  render: ->

    (
      <div className="row">
        <div className="col-md-12">
          <div className="landing-item" style={@getStyle()}>
            <div className="landing-item-mask">
              <div className={@getContentClass()}>
                <div className="inner">{@props.content}</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
}

module.exports = LandingItem
