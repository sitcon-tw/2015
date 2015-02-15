###
# App
###

Router = require 'react-router'
React = require 'react'

routes = require './routes'


Router.run routes, (Handler) ->
  appElement = document.getElementById("app")
  React.render <Handler/>, appElement
