###
# Speaker Item
###

React = require 'react'

SpeakerItem = React.createClass {
  displayName: 'SpeakerItem'
  getSpeakerAvatar: ->
    avatarUrl = @props.speaker.avatar
    return "https://staff.sitcon.org#{avatarUrl}" if avatarUrl.indexOf('/') is 0
    "#{avatarUrl}&s=400"

  render: ->
    (
      <div className="col-md-4">
        <div className="speaker">
          <div className="speaker-avatar">
            <img src={@getSpeakerAvatar()} />
          </div>
          <div className="speaker-meta">
            <div className="speaker-bio">
              <div className="speaker-name">
                {@props.speaker.speaker}
              </div>
              {@props.speaker.speakerbio}
            </div>
          </div>
        </div>
      </div>
    )
}

module.exports = SpeakerItem
