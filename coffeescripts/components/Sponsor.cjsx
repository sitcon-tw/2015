###
# Sponsor
#
# @cjsx React.DOM
###

React = require 'react'

Sponsor = React.createClass {
  displayName: 'Sponsor'
  render: ->
    (
      <div id="sponsor">
        <div className="row">
          <div className="col-md-12 text-center">
            <img src="images/sponsor.png" />
          </div>
        </div>
      </div>
    )
}

module.exports = Sponsor
