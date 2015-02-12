###
# Sponsor Group
#
# @cjsx React.DOM
###

React = require 'react'

SponsorItem = require './SponsorItem'

SponsorGroup = React.createClass {
  displayName: 'SponsorGroup'
  buildSponsorRow: ->
    _rows = []
    _items = []
    _columnSize = 12 / @props.rowItem

    for sponsor, key in @props.sponsors
      _items.push (
        <SponsorItem columnSize={_columnSize} key={key} {...sponsor} />
      )

      if (key + 1) % @props.rowItem is 0
        _rows.push (
          <div className="row" key={key}>
            {_items}
          </div>
        )
        _items = []

    if _items.length > 0
      _rows.push (
        <div className="row" key={key}>
          {_items}
        </div>
      )

    _rows
  render: ->
    (
      <div className="sponsor-group">
        <div className="row">
          <div className="col-md-12">
            <h1 className="sponsor-group-title">{@props.sponsorLevel}</h1>
          </div>
        </div>
        {@buildSponsorRow()}
      </div>
    )

}

module.exports = SponsorGroup
