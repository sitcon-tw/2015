###
# Landing Parallax
#
# @cjsx React.DOM
###

React = require 'react'

ParallaxScene = require './ParallaxScene'
ParallaxItem = require './ParallaxItem'

LandingParallax = React.createClass {
  displayName: 'LandingParallax'
  render: ->
    (
      <div className="landing-parallax-item">
        <div id="landing-parallax">
          <ParallaxScene>
            <ParallaxItem depth="0.8"><img className="landing-logo position1" src="images/logo-icon.png" /></ParallaxItem>
            <ParallaxItem depth="0.7"><img className="landing-logo position2" src="images/red-logo-icon.png" /></ParallaxItem>

            <ParallaxItem depth="0.5" id="landing-character-left"><img src="images/sitcon2015_l.png" /></ParallaxItem>
            <ParallaxItem depth="0.5" id="landing-character-right"><img src="images/sitcon2015_r.png" /></ParallaxItem>

            <ParallaxItem depth="0.3"><img className="landing-logo position4" src="images/logo-icon.png" width="48" height="70" /></ParallaxItem>
            <ParallaxItem depth="0.4"><img className="landing-logo position3" src="images/red-logo-icon.png" width="48" height="70" /></ParallaxItem>

            <ParallaxItem depth="0.2" id="landing-register">
              <a href="http://sitcon.kktix.cc/events/sitcon2015" target="_blank" className="btn btn-large btn-primary">立即報名</a>
            </ParallaxItem>
          </ParallaxScene>
        </div>
      </div>
    )
}

module.exports = LandingParallax
