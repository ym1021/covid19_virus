<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <title>코로나19에 대한 모든 것</title>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
      <style>
        div { padding: 20px 20px 20px 20px; }
        h1, h3 { text-align: center; }
        table, td, th {
          text-align: center; 
          border: 0.5px solid black;
          margin: 10px;
          padding: 5px 5px 5px 5px;
        }
        strong { color:MediumSeaGreen; }
        table {
           width: 100%;
            border-collapse: collapse;
        }
      </style>
      <body>
        <div class="w3-bar w3-black">
          <a href="#" class="w3-bar-item w3-button">Home</a>
          <a href="#virus" class="w3-bar-item w3-button">바이러스</a>
          <a href="#covid19" class="w3-bar-item w3-button">코로나19</a>
          <a href="#vaccine" class="w3-bar-item w3-button">백신</a>
          <a href="http://ncov.mohw.go.kr/" target="_blank" class="w3-bar-item w3-button">발생현황</a>
          <a href="https://ncv.kdca.go.kr/" target="_blank" class="w3-bar-item w3-button">접종현황</a>
        </div>
        <header class="w3-container w3-sand w3-center" style="padding:150px 20px">
          <h1>코로나19에 대한 모든 것</h1>
        </header>
        <div>
          <h1 id="virus">바이러스</h1><hr/>
          <h5><xsl:value-of select="virus/바이러스/바이러스정의"/><hr/>
          추가정보 : <xsl:value-of select="/virus/바이러스/추가정보"/></h5>
        </div>
        <br/><br/><br/><br/><br/>
        <div>
          <h1 id="covid19">코로나바이러스감염증-19(COVID-19)</h1><hr/>
          <h5>요약 : <xsl:value-of select="virus/코로나19/코로나19정의/요약"/></h5><br/>
          <h5>형태 : <xsl:value-of select="virus/코로나19/코로나19정의/형태"/></h5><br/>
          <h5>병원체 : <xsl:value-of select="virus/코로나19/코로나19정의/병원체"/></h5><br/>
          <h5>전파경로 : <xsl:value-of select="virus/코로나19/코로나19정의/전파경로"/></h5><br/>
          <h5>잠복기 : <xsl:value-of select="virus/코로나19/코로나19정의/잠복기"/></h5><br/>
          <h5>증상 : <xsl:value-of select="virus/코로나19/코로나19정의/증상"/></h5><br/>
          <h5>치료 : <xsl:value-of select="virus/코로나19/코로나19정의/치료"/></h5><br/>
          <h5>치명률 : <xsl:value-of select="virus/코로나19/코로나19정의/치명률"/></h5><br/>
          <h5>예방 : <xsl:value-of select="virus/코로나19/코로나19정의/예방"/></h5><br/>
          <h5>추가정보 : <xsl:value-of select="virus/코로나19/코로나19정의/추가정보"/></h5><br/><hr/>
          <h5>확진환자 : <xsl:value-of select="virus/코로나19/관리/확진/확진환자"/></h5><br/>
          <h5>의사환자 : <xsl:value-of select="virus/코로나19/관리/확진/의사환자"/></h5><br/>
          <h5><strong>조사대상</strong><br/><xsl:value-of select="virus/코로나19/관리/확진/조사대상"/></h5><br/>
          <h5><strong>의심환자 행동수칙</strong><br/><xsl:value-of select="virus/코로나19/관리/행동수칙/의심"/></h5><br/>
          <h5><strong>선별진료소 행동수칙</strong><xsl:for-each select="virus/코로나19/관리/행동수칙/검사">
          <br/><xsl:value-of select="첫째"/><br/><xsl:value-of select="둘째"/><br/>
          </xsl:for-each></h5><br/>
          <h5><strong>확진자치료</strong><xsl:for-each select="virus/코로나19/관리/확진자치료">
          <br/><xsl:value-of select="첫째"/><br/><xsl:value-of select="둘째"/>
          <br/><xsl:value-of select="셋째"/><br/><xsl:value-of select="넷째"/><br/><xsl:value-of select="다섯째"/>
          </xsl:for-each></h5><br/>
          <h5><strong>증상있는경우 격리해제</strong><xsl:for-each select="virus/코로나19/관리/격리해제/증상있는경우">
          <br/>임상경과기반기준 : <xsl:value-of select="임상경과기반기준"/><br/>검사기반기준 : <xsl:value-of select="검사기반기준"/><br/>
          </xsl:for-each></h5><br/>
          <h5><strong>증상있는경우 격리해제</strong><xsl:for-each select="virus/코로나19/관리/격리해제/증상없는경우">
          <br/>임상경과기반기준 : <xsl:value-of select="임상경과기반기준"/><br/>검사기반기준 : <xsl:value-of select="검사기반기준"/><br/>
          </xsl:for-each></h5><br/><hr/>
          
          <h3  id="vaccine">코로나19 백신</h3>
          <h5>정의 : <xsl:value-of select="virus/코로나19/백신/백신정의"/></h5><br/>
          <h5>이유 : <xsl:value-of select="virus/코로나19/백신/이유"/></h5><br/>
          <h5><strong>종류</strong><br/>
          mRNA 백신 : <xsl:value-of select="virus/코로나19/백신/종류/mRnA"/><br/>
          바이러스벡터 백신 : <xsl:value-of select="virus/코로나19/백신/종류/바이러스벡터"/><br/>
          주의!! <xsl:value-of select="virus/코로나19/백신/종류/주의"/><br/>
          </h5><br/>
          <h5><strong>소개</strong><br/><xsl:value-of select="virus/코로나19/백신/소개"/></h5><br/>
          <h5><strong>백신 종류</strong></h5>
          <table>
            <xsl:for-each select="virus/코로나19/백신/백신특징">
              <tr>
                <td>제조사</td>
                <td><xsl:value-of select="화이자/제조사"/></td>
                <td><xsl:value-of select="모더나/제조사"/></td>
                <td><xsl:value-of select="아스트라제네카/제조사"/></td>
                <td><xsl:value-of select="얀센/제조사"/></td>
              </tr>
              <tr>
                <td>종류</td>
                <td><xsl:value-of select="화이자/@kind"/></td>
                <td><xsl:value-of select="모더나/@kind"/></td>
                <td><xsl:value-of select="아스트라제네카/@kind"/></td>
                <td><xsl:value-of select="얀센/@kind"/></td>
              </tr>
              <tr>
              <td>백신명</td>
                <td><xsl:value-of select="화이자/백신명"/></td>
                <td><xsl:value-of select="모더나/백신명"/></td>
                <td><xsl:value-of select="아스트라제네카/백신명"/></td>
                <td><xsl:value-of select="얀센/백신명"/></td>
              </tr>
              <tr>
              <td>연령</td>
                <td><xsl:value-of select="화이자/연령"/></td>
                <td><xsl:value-of select="모더나/연령"/></td>
                <td><xsl:value-of select="아스트라제네카/연령"/></td>
                <td><xsl:value-of select="얀센/연령"/></td>
              </tr>
              <tr>
              <td>구성</td>
                <td><xsl:value-of select="화이자/구성"/></td>
                <td><xsl:value-of select="모더나/구성"/></td>
                <td><xsl:value-of select="아스트라제네카/구성"/></td>
                <td><xsl:value-of select="얀센/구성"/></td>
              </tr>
              <tr>
              <td>접종횟수</td>
                <td><xsl:value-of select="화이자/접종횟수"/></td>
                <td><xsl:value-of select="모더나/접종횟수"/></td>
                <td><xsl:value-of select="아스트라제네카/접종횟수"/></td>
                <td><xsl:value-of select="얀센/접종횟수"/></td>
              </tr>
              <tr>
              <td>접종량 및 방법</td>
                <td><xsl:value-of select="화이자/접종량및방법"/></td>
                <td><xsl:value-of select="모더나/접종량및방법"/></td>
                <td><xsl:value-of select="아스트라제네카/접종량및방법"/></td>
                <td><xsl:value-of select="얀센/접종량및방법"/></td>
              </tr>
               <tr>
               <td>보관법</td>
                <td><xsl:value-of select="화이자/보관"/></td>
                <td><xsl:value-of select="모더나/보관"/></td>
                <td><xsl:value-of select="아스트라제네카/보관"/></td>
                <td><xsl:value-of select="얀센/보관"/></td>
              </tr>
              <tr>
              <td>유통방법</td>
                <td><xsl:value-of select="화이자/유통"/></td>
                <td><xsl:value-of select="모더나/유통"/></td>
                <td><xsl:value-of select="아스트라제네카/유통"/></td>
                <td><xsl:value-of select="얀센/유통"/></td>
              </tr>
              <tr>
              <td>개봉 후 유효기간</td>
                <td><xsl:value-of select="화이자/개봉후유효기간"/></td>
                <td><xsl:value-of select="모더나/개봉후유효기간"/></td>
                <td><xsl:value-of select="아스트라제네카/개봉후유효기간"/></td>
                <td><xsl:value-of select="얀센/개봉후유효기간"/></td>
              </tr>
            </xsl:for-each>
          </table>
          <h5>추가정보 : <xsl:value-of select="/virus/코로나19/백신/추가정보"/></h5>
        </div>
        <header class="w3-container w3-black w3-center" style="padding:30px 20px">
          <p>Powered by 김보경 임수민</p>
          <p>대구가톨릭대학교 컴퓨터소프트웨어학부</p>
        </header>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
