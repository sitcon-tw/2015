###
# Routes
###

React = require('react')

# Router
Router = require('react-router')

Route = Router.Route
DefaultRoute = Router.DefaultRoute
NotFoundRoute = Router.NotFoundRoute

# Components

App = require './components/App'
Home = require './components/Home'
About = require './components/About'
Location = require './components/Location'
Speaker = require './components/Speaker'
Schedule = require './components/Schedule'
Sponsor = require './components/Sponsor'
Team = require './components/Team'

module.exports = (
  <Route name="App" path="/" handler={App}>
    <DefaultRoute handler={Home} />
    <Route name="About" handler={About}/>
    <Route name="Location" handler={Location}/>
    <Route name="Speaker" handler={Speaker}/>
    <Route name="Schedule" handler={Schedule}/>
    <Route name="Sponsor" handler={Sponsor}/>
    <Route name="Team" handler={Team}/>
  </Route>
)
