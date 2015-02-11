###
# Application Dispather
###

React = require 'react'
FluxDispatcher = require('flux').Dispatcher

class Dispatcher extends FluxDispatcher
  handleViewAction: (action) ->
    @dispatch {
      source: 'VIEW_ACTION'
      action: action
    }


module.exports = new Dispatcher
