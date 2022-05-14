<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人主页</title>
    <link rel="stylesheet" href="https://www.bootcss.com/p/buttons/css/buttons.css">
    <link rel="stylesheet" href="input.css">
    <link rel="stylesheet" href="Personal.css">
    <script src="../import/jquery-3.6.0.js"></script>
    <script src="../import/jquery.color-2.2.0.min.js"></script>
    <script src="Personal.js"></script>
</head>

<body>
    <%
        //判断是否是第一次进入页面
        if(session.isNew()){//是的话，置status为未登录,并扔回登录界面
            session.setAttribute("status",0);
            session.setAttribute("msg","您还未登录！");
            response.sendRedirect("login.jsp");
            return;
        }
        //判断是否已登录
        if((int)session.getAttribute("status")==0){
            session.setAttribute("msg","您还未登录！");
            response.sendRedirect("login.jsp");
            return;
        }
        String username = new String((String)session.getAttribute("username"));
        String msg = "";
        if(session.getAttribute("msg") != null){
            // 有错误信息：显示错误信息:
            msg = (String)session.getAttribute("msg");
            session.removeAttribute("msg");
        }
        out.print("<div id=\"message\" style=\"display:none\">"+msg+"</div>");

    %>
    <img src="../img/GZHU.png" alt="">
    <form action="logout.jsp">
        <input type="submit" id="username" value="<%= username%>" />
    </form>
    <header></header>
    <div id="loginframe">
        <form action="changeProfile.jsp" method="POST">
            <div>
                <input class="gate" id="name" name="name" type="text" placeholder="Enter name:" value="<%= (String)session.getAttribute("name")%>" required/>
                <label for="name">姓名</label>
            </div>
            <div>
                <input class="gate" id="age" name="age" type="text" placeholder="Enter your age:" value="<%= (String)session.getAttribute("age")%>" oninput="value=value.replace(/[^\d]/g,'')" required/>
                <label for="age">年龄</label>
            </div>
            <div>
                <input class="gate" id="password" name="password" type="password" placeholder="Enter password,more than 8 characters:" value="<%= (String)session.getAttribute("password")%>" required minlength="8"/>
                <label for="password">密码</label>
            </div>
            <input type="submit" id="login" class="button button-glow button-border button-rounded button-caution" value="修 改">
        </form>
    </div>
    <div id="backtomain"><button class="button button-glow button-border button-rounded button-primary"
            onclick="window.location.href='../display.jsp'">返回首页</button></div>
</body>
</html>