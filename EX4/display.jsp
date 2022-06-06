<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>红色长廊</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://www.bootcss.com/p/buttons/css/buttons.css">
    <link rel="stylesheet" href="style.css">
    <script src="./import/jquery-3.6.0.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="./index.js"></script>
</head>

<body>
    <header>
        <div class="banner">
            <img src="./img/logo.png" alt="" id="logo">
        </div>
        <div class="menu">
        </div>
    </header>
    <div id="username">
        <%
            //判断是否是第一次进入页面
            if(session.isNew()){//是的话，置status为未登录
                session.setAttribute("status",0);
            }
            //判断是否已登录
            if((int)session.getAttribute("status")==0){
                //什么也不做，username置空
            }
            else{
                out.print((String)session.getAttribute("username"));
            }
        %>
    </div>
    <div id="account">
        <button class="button button-glow button-border button-rounded button-highlight unlogged" style="display:none"
            onclick="window.location.href='./Login/register.jsp'">注册</button>
        <button class="button button-glow button-rounded button-highlight unlogged" style="display:none"
            onclick="window.location.href='./Login/login.jsp'">登录</button>
        <button class="button button-glow button-border button-rounded button-primary logged" style="display:none"
            onclick="window.location.href='./Login/Personal.jsp'"></button>
    </div>
    <!-- Swiper -->
    <div class="swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="./img/1.jpg" alt=""></div>
            <div class="swiper-slide"><img src="./img/2.jpg" alt=""></div>
            <!-- <div class="swiper-slide"><img src="./img/3.jpg" alt=""></div> -->
            <div class="swiper-slide"><img src="./img/4.jpg" alt=""></div>
            <div class="swiper-slide"><img src="./img/5.jpg" alt=""></div>
            <div class="swiper-slide"><img src="./img/6.jpg" alt=""></div>
            <div class="swiper-slide"><img src="./img/7.jpg" alt=""></div>
            <div class="swiper-slide"><img src="./img/8.jpg" alt=""></div>
            <!-- <div class="swiper-slide">Slide 9</div>
            <div class="swiper-slide">Slide 10</div> -->
        </div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </div>
    <div id="fontSizeSwitcher">
        <div class="fontSize">小</div>
        <div class="fontSize">中</div>
        <div class="fontSize">大</div>
        <div id="sliding_block"></div>
    </div>
    <div id="intro">
        <h1>广州大学党史红色长廊</h1>
        <p>“回望党的百年光辉历程，眺望前方漫漫征途，我们必须始终赓续红色血脉，用党的百年奋斗重大成就和历史经验鼓舞斗志、指引方向；回望广州大学的发展历史，博学笃行、与时俱进的广大人始终以家国人民为上，以铸魂育人为本，坚守为党育人为国育才初心。”
        </p>
        <p>在中国共产党成立100周年的重大历史时刻、在全国上下深入学习贯彻党的十九届六中全会精神之际，为着力构建“党建+融合”机制，积极探索党史学习教育新模式，推动广大师生进一步“学史明理、学史增信、学史崇德、学史力行”，我校规划建设了全国高校首个长达千米，集展览宣教、主题景观展示、文化交流服务等多功能于一体的党建红色文化长廊（简称“红色长廊”）。——来自广州大学公众号
        </p>
    </div>
    <footer>

    </footer>
</body>

</html>