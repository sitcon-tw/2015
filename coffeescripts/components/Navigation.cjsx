###
# Navigation
#
# @cjsx React.DOM
###

React = require 'react'
Router = require 'react-router'
Link = Router.Link

menuItems = {
  'About': '/'
  'Location': 'Location'
  'Speaker': 'Speaker'
  'Schedule': 'Schedule'
  'Sponsor': 'Sponsor'
  'Team': 'Team'
}

Navigation = React.createClass {
  displayName: 'Navigation',
  buildMenuItems: ->
    menuItemComponents = []
    key = 0
    for itemName, path of menuItems
      menuItemComponents.push(
        <li key={++key}>
          <Link to={path}>{itemName}</Link>
        </li>
        <li className="divider" key={++key}>/</li>
      )
    menuItemComponents

  render: ->


    (
      <nav id="main-menu" className="navbar navbar-styled">
        <div className="container">
          <div className="navbar-header">
            <button type="button" className="navbar-toggle collapsed" data-toggle="collapse" data-target="main-menu-collapse">
              <span className="sr-only">Toggle navigation</span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
            </button>
            <div className="navbar-brand">
              <Link to="App"><img src="images/logo.png" /></Link>
            </div>
          </div>
          <div className="collapse navbar-collapse" id="main-menu-collapse">
            <ul className="nav navbar-nav navbar-right">
              {@buildMenuItems()}
            </ul>
          </div>
        </div>
      </nav>
    )
}

module.exports = Navigation
