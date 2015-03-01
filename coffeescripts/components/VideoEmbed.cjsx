###
# Viedo Embed
#
# @cjsx React.DOM
###

React = require 'react'

VideoEmbed = React.createClass {
  displayName: 'VideoEmbed'
  getYotutbeVideo: ->
    (
      <iframe type="text/html" width="100%" height="100%" src="https://www.youtube.com/embed/#{@props.link}?theme=light&controls=0&showinfo=0&color=white&loop=0" frameborder="0" style={border: "none"}/>
    )
  getVideoContent: ->
    return @getYotutbeVideo() if @props.type == "youtube"

  render: ->
    (
      <div className="row">
        <div className="col-md-12">
          <div className="landing-item">
            <div className="landing-item-mask">
              {@getVideoContent()}
            </div>
          </div>
        </div>
      </div>

    )
}

module.exports = VideoEmbed
