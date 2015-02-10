###
# Footer
#
# @cjsx React.DOM
###

React = require 'react'

Footer = React.createClass {
  displayName: 'Footer'
  render: ->
    (
      <footer id="footer" className="container">
        <div className="row">
          <div class="col-md-12">
            &copy; 2014 Students’ Information Technology Conference
          </div>
        </div>
      </footer>
    )
}

module.exports = Footer
