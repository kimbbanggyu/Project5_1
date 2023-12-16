<%--
  Created by IntelliJ IDEA.
  User: 김영규
  Date: 2023-12-15
  Time: 오전 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>AddPage</title>
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
        .middle{
            margin-left: 10%;
        }
        .ADDPAGE{
            display: block;
            text-shadow: 0 2px 4px rgba(0,0,0,.3);
            color: #31329a;
            text-align: center;
            font-family: 'Black Han Sans', sans-serif;
            font-size: 50px;
        }
        /*#name{
            top: 40px;;
            bottom:0;
            left: 300px;
            position: absolute;
            color: goldenrod;
            font-weight: bold;
            height: fit-content;
        }*/
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            height: 500px;
        }
        #list td, #list th {
            border: 5px solid #31329a;
            padding: 8px;
            text-align:center;
        }
        #list tr {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: white;
            color: black;
            font-weight: bold;
        }
        .selectName{
            font-family: 'Black Han Sans', sans-serif;
            font-size: 30px;
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

    <div>
        <img src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/sub/img_40th_banner.png" id="backGround" alt="KBO 40주년">
    </div>
    <h1 class="ADDPAGE">선수 추가하는 페이지</h1>
    <div class="middle">
        <form name = "form1" action="addok" method="post" enctype="multipart/form-data">
            <table id="list" style="width: 90%" >
                <tr>
                    <td class="selectName">카테고리: </td>

                    <td><input type="radio" id="indomitable" name="playGroup" value="불굴의 의지" checked />
                        <label for="indomitable">불굴의 의지</label>

                        <input type="radio" id="mvp" name="playGroup" value="최다 득표자" checked />
                        <label for="mvp">최다 득표자</label>

                        <input type="radio" id="legend" name="playGroup" value="왕년의 스타" checked />
                        <label for="legend">왕녀의 스타</label>

                        <input type="radio" id="starter" name="playGroup" value="최강 선발" checked />
                        <label for="starter">최강 선발</label>

                        <input type="radio" id="sincerity" name="playGroup" value="성싱의 지존" checked />
                        <label for="sincerity">성실의 지존</label>

                        <input type="radio" id="beast" name="playGroup" value="근성의 야수" checked />
                        <label for="beast">근성의 야수</label>

                    </td>
                </tr>
                <tr><td class="selectName">선수 이름: </td>
                    <td><input type="text" name="name" id="name" style="width: 600px; height: 30px;"/></td></tr>
                <tr><td class="selectName">선수 사진: </td>
                    <td><input type="file" name="uploadFile" class="btn btn-warning"/></td></tr>
                <tr><td class="selectName">소속 팀: </td>
                    <td><input type="text" name="teamName" id="team" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">생일: </td>
                    <td><input type="text" name="birthday" id="birthday" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">수상경력: </td>
                    <td><input type="text" name="awards" id="awards" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">키: </td>
                    <td><input type="text" name="height" id="height" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">SNSID: </td>
                    <td><input type="text" name="snsId" id="snsId" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">응원곡: </td>
                    <td><input type="text" name="song" id="song" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">몸무게: </td>
                    <td><input type="text" name="weight" id="weight" style="width: 600px; height: 30px;"></td></tr>
                <tr><td class="selectName">한줄 소개: </td>
                    <td><textarea name="coment" rows="5" style="width: 600px; "></textarea></td>
            </table>
            <input class="btn btn-warning" style="margin-top: 10px" type="submit"value="추가하기"> <input style="margin-top: 10px" class="btn btn-warning" type="reset"value="다시입력">
        </form>
    <div>
</body>
</html>
