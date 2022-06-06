<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>答题记录</title>
    <link rel="stylesheet" href="https://www.bootcss.com/p/buttons/css/buttons.css">
    <link rel="stylesheet" href="recordlist.css">
    <script src="../import/jquery-3.6.0.js"></script>
    <script src="../import/jquery.color-2.2.0.min.js"></script>
    <script src="recordlist.js"></script>
</head>

<body>
    <%
        //判断是否是第一次进入页面
        if(session.isNew()){//是的话，置status为未登录,并扔回登录界面
            session.setAttribute("status",0);
            session.setAttribute("msg","您还未登录！");
            response.sendRedirect("../Login/login.jsp");
            return;
        }
        //判断是否已登录
        if((int)session.getAttribute("status")==0){
            session.setAttribute("msg","您还未登录！");
            response.sendRedirect("../Login/login.jsp");
            return;
        }
        String username = new String((String)session.getAttribute("username"));

    %>
    
    <form action="play.jsp">
        <input type="submit" id="username" value="<%= username%>" />
    </form>
    <div id="frame">
        <span>标题</span>
        <ul id="list"></ul>
        <div id="backtomain"><button class="button button-glow button-border button-rounded button-primary"
            onclick="window.location.href='../display.jsp'">返回首页</button></div>
    </div>
    
</body>
</html>