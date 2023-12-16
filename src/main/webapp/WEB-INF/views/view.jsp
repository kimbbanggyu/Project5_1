<%--
  Created by IntelliJ IDEA.
  User: 김영규
  Date: 2023-12-15
  Time: 오전 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&display=swap" rel="stylesheet">
    <title>player_Information</title>
    <style>
        .vl_1 {
            margin-left: 50px;
            float: left;
            height: 100%;
            border-left: 6px solid #6c757d;
        }

        .vl {
            margin-left: 5px;
            float: left;
            height: 100%;
            border-left: 6px solid #6c757d;
        }

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
        .leftMenu{
            margin-top: 0;
            display: block;
            float: left;
            background-color: #0a0a42;
            width: 10%;
            height: 100%;
        }
        .leftMenu_word{
            color: gold;
            height: fit-content;
            text-align: center;
            font-size: 60px;
            font-family: 'Black Han Sans', sans-serif;
        }
        .middleMenu{
            float: left;
        }
        .RoundBox_round{
            margin-top: 20px;
            height: 76px;
            width: 76px;
            background-color: #fff;
            border: 4px solid #000271;
            box-sizing: border-box;
            text-align: center;
            margin-left: 15%;
        }
        .RoundBox_badge{
            top: 13px;
            text-align: center;
            width: 51px;
            height: 12px;
            margin-left: 10px;
            font-family: 'Black Han Sans', sans-serif;
            color: #000271;
        }
        .RoundBox_badge_1{
            width: 51px;
            margin-left: 10px;
            font-size: 20px;
            font-family: 'Black Han Sans', sans-serif;
            color: #000271;
        }
        .text_titleName{
            font-family: 'Black Han Sans', sans-serif;
            font-size: 42px;
            text-shadow: 0 2px 4px rgba(0,0,0,.3);
            color: #31329a;
            font-weight: 400;
            margin-left: 15%;
        }
        .playerImg{
            margin-left: 15%;
            width: 80%;
            height: 400px;
        }
        .rightMenu{
            float: left;
            margin-top: 30px;
            margin-left: 20px;
        }
        tr{
            display: block;
            margin-top: 20px;
        }
        th{
            font-family: 'Black Han Sans', sans-serif;
            font-size: 42px;
            color: black;
            text-shadow: 0 2px 4px rgba(0,0,0,.3);
        }
    </style>
</head>
<body>
    <div class="wrapping lnb-wrap">
        <div class="lnb-box">
            <h1 class="logo"><a href="index.jsp"><img src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/h1_logo.png" alt=""></a></h1>
            <nav>
                <h1 class="menu"><a href="add.jsp">전체 선수 보기</a> </h1>
                <h1 class="menu"><a href="add.jsp">선수 프로필 추가</a> </h1>
                <h1 class="menu"><a href="edit.jsp">선수 프로필 변경</a> </h1>
                <h1 class="menu"><a href="delete.jsp">선수 프로필 삭제</a> </h1>
            </nav>
        </div>
    </div>
        <h1>야구의 모든 것</h1>


    <div>
        <div class="leftMenu">
            <h1 class="leftMenu_word">전</h1>
            <h1 class="leftMenu_word">설</h1>
            <h1 class="leftMenu_word">을</h1>
            <h1 class="leftMenu_word">말</h1>
            <h1 class="leftMenu_word">하</h1>
            <h1 class="leftMenu_word">다</h1>
        </div>
        <div class="vl_1"></div>
        <div class="middleMenu">
            <div class="RoundBox_round">
                <p class="RoundBox_badge">레전드</p>
                <p class="RoundBox_badge_1">01</p>
            </div>
            <h2 class="text_titleName">독보적인, 아니 국보적인 투수 선동열</h2>
            <img class="playerImg" src="https://sports-phinf.pstatic.net/20220714_26/16577826906156UuJ0_PNG/%BC%F6%C1%A4%B5%CA6_%BC%B1%B5%BF%BF%ADposter.png" width="816" alt>
        </div>

        <div class="vl"></div>

        <div class="rightMenu">
            <table>
                <tbody>
                    <tr>
                        <th>선수 이름: 선동열</th>
                    </tr>
                    <tr>
                        <th>생년원일: 1963. 1. 10</th>
                    </tr>
                    <tr>
                        <th>팀: 해태</th>
                    </tr>
                    <tr>
                        <th>포지션: 투수,감독</th>
                    </tr>
                    <tr>
                        <th>SNSID: kimbbanggyu_042</th>
                    </tr>
                    <tr>
                        <th>키: 184CM</th>
                    </tr>
                    <tr>
                        <th>몸무게: 97kg</th>
                    </tr>
                    <tr>
                        <th>응원곡: 무</th>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
