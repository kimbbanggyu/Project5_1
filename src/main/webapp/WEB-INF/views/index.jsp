<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.mycom.myapp.boardDAO, com.mycom.myapp.boardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&display=swap" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <style>
     .lnb-box{
         height: 80px;
         background-color: #e9edee;
         width: 100%;
         display: block !important;
         position: fixed;
         z-index: 90;
         transition: all 0.3s ease 0s;
     }
     nav{
         float: right;
         font-size: 18px;
         line-height: 1.5em;
      }
      .logo{
          float: left;
          width: auto;
      }
      .menu{
          float: left;
          width: auto;

      }
      a{
          color: black;
          font-family: 'Black Han Sans', sans-serif;
          vertical-align: baseline;
          text-decoration: none;
          margin: 35px;
          padding: 0;
          border: 0;

      }
      #backGround{
          margin-top: 100px;
          width: 100%;
      }
      .legendBox{
          float: left;
          margin-left: 40px;
      }
      .most{
          background-color: #0a0a42;
          font-family: 'Black Han Sans', sans-serif;
          font-size: 40px;
          display: block;
          width: 200px;
          height: 50px;
          margin-top: 5px;
          padding-top: 5px;
          text-align: center;
          color: gold;
      }
      .playerName{
          margin-top: 5px;
          background-color: #070742;
          font-weight: bold;
          height: 40px;
          font-size: 30px;
          color: white;
      }
      .playerImg{
          width: 200px; height: 240px
      }
</style>
</head>
<body>
<div class="wrapping lnb-wrap">
    <div class="lnb-box">
        <h1 class="logo"><a href="index.jsp"><img src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/h1_logo.png" alt=""></a></h1>
        <nav>
            <h1 class="menu"><a href="index.jsp">전체 선수 보기</a> </h1>
            <h1 class="menu"><a href="add.jsp">선수 프로필 추가</a> </h1>
            <h1 class="menu"><a href="edit.jsp">선수 프로필 변경</a> </h1>
            <h1 class="menu"><a href="delete.jsp">선수 프로필 삭제</a> </h1>
        </nav>
    </div>
</div>

<div>
    <img src="./img/background.png" id="backGround" alt="KBO 40주년">
</div>
<c:forEach items="${list}" var="u">

<div class="legendBox">
    <table>

        <thead><p class="most">최다 득표자</p></thead>
        <tbody>
        <tr>
            <th class="playerName">${u.getName()}</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220714_26/16577826906156UuJ0_PNG/%BC%F6%C1%A4%B5%CA6_%BC%B1%B5%BF%BF%ADposter.png" width="816" alt></td>
        </tr>

        <tr>
            <th class="playerName">최동원</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220714_266/16577828598010LQlY_PNG/%C3%D6%B5%BF%BF%F8poster.png" width="816" alt></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="legendBox">
    <table>
        <thead><p class="most">원년의 스타</p></thead>
        <tbody>
        <tr>
            <th class="playerName">박철순</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220721_183/1658388562562e1tzP_PNG/%B9%DA%C3%B6%BC%F8poster.png" width="816" alt=""></td>
        </tr>

        <tr>
            <th class="playerName">이만수</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220722_162/16584640604199PXBK_PNG/%C0%CC%B8%B8%BC%F6poster.png" width="816" alt=""></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="legendBox">
    <table>
        <thead><p class="most">불굴의 의지</p></thead>
        <tbody>
        <tr>
            <th class="playerName">이상훈</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220729_109/16590576558167iPT0_JPEG/%C0%CC%BB%F3%C8%C6poster.jpg" width="816" alt=""></td>
        </tr>

        <tr>
            <th class="playerName">박정태</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220729_232/1659057804052lk3Pv_PNG/%B9%DA%C1%A4%C5%C2poster.png" width="816" alt=""></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="legendBox">
    <table>
        <thead><p class="most">최강 선발</p></thead>
        <tbody>
        <tr>
            <th class="playerName">이강철</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220812_205/1660288015153LFixb_JPEG/%C0%CC%B0%AD%C3%B6.jpg" width="816" alt=""></td>
        </tr>

        <tr>
            <th class="playerName">정민철</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220812_167/1660287756541VUvSt_JPEG/%C1%A4%B9%CE%C3%B6.jpg" width="816" alt=""></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="legendBox">
    <table>
        <thead><p class="most">성실의 지존</p></thead>
        <tbody>
        <tr>
            <th class="playerName">김태균</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220819_91/1660879963825Krn4A_JPEG/%B1%E8%C5%C2%B1%D5poster.jpg" width="816" alt=""></td>
        </tr>

        <tr>
            <th class="playerName">박재홍</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220819_83/16608800565403bIgv_JPEG/%B9%DA%C0%E7%C8%ABposter.jpg" width="816" alt=""></td>
        </tr>
        </tbody>
    </table>
</div>

<div class="legendBox">
    <table>
        <thead><p class="most">근성의 야수</p></thead>
        <tbody>
        <tr>
            <th class="playerName">전준호</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220826_228/1661483938103OFHRy_JPEG/%C0%FC%C1%D8%C8%A3poster.jpg" width="816" alt=""></td>
        </tr>

        <tr>
            <th class="playerName">이순철</th>
        </tr>
        <tr>
            <td><img class="playerImg" src="https://sports-phinf.pstatic.net/20220826_140/1661484123153rr8q3_JPEG/%C0%CC%BC%F8%C3%B6poster.jpg" width="816" alt=""></td>
        </tr>
        </tbody>
    </table>
</div>
</c:forEach>

</body>
</html>
