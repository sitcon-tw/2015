###
# Navigation
#
# @cjsx React.DOM
###

React = require 'react'
Router = require 'react-router'
Link = Router.Link

menuItems = {
  'About': 'About'
  'Location': 'Location'
  'Speaker': 'Speaker'
  'Schedule': 'Schedule'
  'Sponsor': 'Sponsor'
  'Team': 'Team'
}

Navigation = React.createClass {
  displayName: 'Navigation',
  getInitialState: ->
    {
      menuOpen: false
    }

  buildMenuItems: ->
    menuItemComponents = []
    key = 0
    for itemName, path of menuItems
      menuItemComponents.push(
        <li key={++key}>
          <Link to={path} onClick={@_onMenuClick}>{itemName}</Link>
        </li>
        <li className="divider" key={++key}>/</li>
      )
    menuItemComponents

  _onClick: (e) ->
    e.preventDefault()

    @setState { menuOpen: !@state.menuOpen }

  _onMenuClick: ->
    @setState { menuOpen: false }

  getMenuClassSet: ->
    if @state.menuOpen
      return "navbar-collapse collapse in"
    "navbar-collapse collapse"

  render: ->


    (
      <nav id="main-menu" className="navbar navbar-styled">
        <div className="container">
          <div className="navbar-header">
            <button type="button" className="navbar-toggle collapsed" onClick={@_onClick}>
              <span className="sr-only">Toggle navigation</span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
            </button>
            <div className="navbar-brand">
              <Link to="App"><img src="images/logo.png" /></Link>
            </div>
          </div>
          <div className={@getMenuClassSet()}>
            <ul className="nav navbar-nav navbar-right">
              {@buildMenuItems()}
            </ul>
          </div>
        </div>
      </nav>
    )
}

module.exports = Navigation
