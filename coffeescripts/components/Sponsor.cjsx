###
# Sponsor
#
# @cjsx React.DOM
###

React = require 'react'

SponsorGroup = require './SponsorGroup'

host = [
  {
    name: '中研院・資創中心・自由軟體鑄造場'
    logo: 'ossf.png'
    link: 'http://www.openfoundry.org/'
  }
  {
    name: '財團法人開放文化基金會'
    logo: 'ocf.png'
    link: 'http://ocf.tw/'
  }
]

cohost = [
  {
    name: '科技部雲端運算資訊安全與開放軟體研發應用推動計畫'
    logo: 'most.png'
  }
  {
    name: '中央研究院資訊科學研究所'
    logo: 'iis.png'
    link: 'http://www.iis.sinica.edu.tw/'
  }
  {
    name: '國立交通大學資訊工程學系'
    logo: 'cs-ntcu.png'
    link: 'http://www.cs.nctu.edu.tw/cswebsite/'
  }
  {
    name: '財團法人資訊工業策進會南區產業服務處'
    logo: 'iii.png'
    link: 'http://sid2.iii.org.tw/main.php'
  }
  {
    name: '師大附中網管小組'
    logo: 'hs-ntnu.png'
    link: 'http://www.hs.ntnu.edu.tw/~computer/cnmc.htm'
  }
]

goldSponsor = [
  {
    name: '聯發科技'
    logo: 'mediatek.png'
    link: 'http://www.mediatek.com'
  }
  {
    name: 'Etu'
    logo: 'etu.png'
    link: 'http://www.etusolution.com/'
  }
  {
    name: 'VIVOTEK'
    logo: 'vivotek.png'
    link: 'http://vvtk-digest.blogspot.tw/'
  }
  {
    name: '祐生研究基金會'
    logo: 'archilife.png'
    link: 'http://www.archilife.org/'
  }
  {
    name: 'Gitcafe'
    logo: 'gitcafe.png'
    link: 'http://gitcafe.com'
  }
  {
    name: 'livehouse.in'
    logo: 'livehousein.png'
    linl: 'http://livehouse.in'
  }
]

silver = [
  {
    name: 'AppWorks'
    logo: 'appworks.png'
    link: 'http://appworks.tw/'
  }
  {
    name: '五倍紅寶石'
    logo: '5xruby.png'
    link: 'http://5xruby.tw'
  }
  {
    name: '廣達電腦'
    logo: 'quantatw.png'
    link: 'http://www.quantatw.com/'
  }
]

thanks = [
  {
    name: 'TiC100 智能城市與物聯網創新競賽'
    logo: 'tic100.png'
    link: 'http://www.tic100.org.tw'
  }
  {
    name: 'CLBC'
    logo: 'clbc.png'
    link: 'http://clbc.tw'
  }
  {
    name: 'KKTIX'
    logo: 'kktix.png'
    link: 'https://kktix.com/'
  }
  {
    name: 'CPRTeam'
    logo: 'CPRTeam.png'
  }
  {
    name: 'DCard'
    logo: 'dcard.png'
    link: 'https://www.dcard.tw/'
  }
  {
    name: 'Coworking Taiwan 台灣共用工作空間交流協會'
    logo: 'coworkingtw.png'
    link: 'http://coworking.tw'
  }
  {
    name: '中國文化大學'
    logo: 'pccu.png'
    link: 'http://www.pccu.edu.tw'
  }
  {
    name: '公民攝影守護民主陣線'
    logo: 's4d.png'
    link: 'http://s4d.tw'
  }
]

partner = [
  {
    name: 'HITCON'
    logo: 'hitcon.png'
    link: 'http://hitcon.org/'
  }
]

media = [
  {
    name: 'iThome'
    logo: 'ithome.png'
    link: 'http://www.ithome.com.tw/'
  }
  {
    name: 'PunNode'
    logo: 'punnode.png'
    link: 'http://punnode.com'
  }
  {
    name: '數位時代'
    logo: 'bnext.png'
    link: 'http://www.bnext.com.tw/'
  }
  {
    name: '關鍵評論網'
    logo: 'thenewslens.png'
    link: 'http://www.thenewslens.com/'
  }
  {
    name: 'TechNews 科技新報'
    logo: 'technews.png'
    link: 'http://technews.tw/'
  }
  {
    name: '國立教育廣播電台'
    logo: 'ner.png'
    link: 'http://news.ner.gov.tw/'
  }
]

Sponsor = React.createClass {
  displayName: 'Sponsor'
  render: ->
    (
      <div id="sponsor">
        <SponsorGroup sponsorLevel="共同主辦" rowItem={2} sponsors={host} />
        <SponsorGroup sponsorLevel="協辦單位" rowItem={3} sponsors={cohost} />
        <SponsorGroup sponsorLevel="Gold" rowItem={2} sponsors={goldSponsor} />
        <SponsorGroup sponsorLevel="Silver" rowItem={3} sponsors={silver} />
        <SponsorGroup sponsorLevel="特別感謝" rowItem={3} sponsors={thanks} />
        <SponsorGroup sponsorLevel="會議夥伴" rowItem={3} sponsors={partner} />
        <SponsorGroup sponsorLevel="媒體夥伴" rowItem={3} sponsors={media} />
      </div>
    )
}

module.exports = Sponsor
