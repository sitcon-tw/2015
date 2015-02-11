###
# Home
###

React = require 'react'

LandingItem = require './LandingItem'

Home = React.createClass {
  display: 'HomePage'
  getFirstLandingContent: ->
    (
      <div className="landing-item-article">
        <div className="row">
          <div className="col-md-6">
            <h1>About Us</h1>
            <p>SITCON 學生計算機年會，由對資訊抱持熱誠的學生們所組成的同名社群自發籌辦，希望能透過技術與知識的激盪，給予學生們一個用自身力量實踐夢想的舞台。本屆年會之主軸聚焦於真正的駭客精神，The True Hackers 。希望讓大家瞭解駭客精神的中心思想，以及駭客精神在各個領域的展現。</p>
          </div>
        </div>
        <div className="row">
          <div className="col-md-5">
            <h1>Students' Creative & Practice</h1>
            <p>SITCON 一直以來鼓勵學生培養動手做的能力與習慣，2015 年也不例外，座談會仍然會聚焦在「學生與創新實作」相關議題。</p>
          </div>
        </div>
      </div>
    )

  getSecondaryLandingContent: ->
    (
      <div className="landing-item-article">
        <div className="row">
          <div className="col-md-5 col-md-offset-7">
            <h1>The True Hackers</h1>
            <p>
            駭客 (hacker) 起源於 1960 年代的麻省理工學院 (MIT) 人工智慧實驗室 (CSAIL) ，在電腦及計算機科學剛起步的年代，初代駭客們想要了解電腦每一部分、每一位元的運作，就是為了寫出更精簡但卻更強大的程式碼，在硬體資源極為有限的狀況下，仍得以探索電腦的用途，一暼運算的未來。
            </p>
          </div>
        </div>
        <div className="row">
          <div className="col-md-6 col-md-offset-6">
            <p>
            他們說 ”Information wants to be free.” ，資訊不應由少數人壟斷，他們早已看透，電腦普及之後，資訊的傳播複製將會以數千倍數萬倍的速度且幾乎零成本的方式進行。有了電腦，更應該讓資訊自由地流通，而非限制它。他們更致力於將電腦普及化，他們相信電腦可以改善人的生活，電腦不應被鎖在企業與政府的層層權威與官僚當中。

            初代駭客們的理念影響了無數人，在各個領域當中發芽茁壯，無論是自由軟體運動、資訊安全、自造者運動、和吹哨者們，都是駭客精神的展現。
            </p>
          </div>
        </div>
      </div>
    )

  render: ->
    (
      <div id="about">
        <LandingItem bg="landing_bg.jpg" content={@getFirstLandingContent()} />
        <LandingItem bg="landing_bg2.jpg" contentAlign="right" content={@getSecondaryLandingContent()} />
      </div>
    )
}

module.exports = Home
