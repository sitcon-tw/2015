###
# Sponsor
#
# @cjsx React.DOM
###

React = require 'react'

SponsorGroup = require './SponsorGroup'

goldSponsor = [
  {
    name: '聯發科技'
    logo: 'mediatek.png'
    link: 'http://www.mediatek.com'
  }
]

thanks = [
  {
    name: 'KKTIX'
    logo: 'kktix.png'
    link: 'https://kktix.com/'
  }
]

partner = [

]

media = [
  {
    name: 'PunNode'
    logo: 'punnode.png'
    link: 'http://punnode.com'
  }
]

Sponsor = React.createClass {
  displayName: 'Sponsor'
  render: ->
    (
      <div id="sponsor">
        <SponsorGroup sponsorLevel="Gold" rowItem={2} sponsors={goldSponsor} />
        <SponsorGroup sponsorLevel="特別感謝" rowItem={3} sponsors={thanks} />
        <SponsorGroup sponsorLevel="媒體夥伴" rowItem={3} sponsors={media} />
      </div>
    )
}

module.exports = Sponsor
