<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>红色长廊注册</title>
    <link rel="stylesheet" href="input.css">
    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="../import/buttons.css">
    
</head>

<body>
    <header>
        <img src="../img/GZHU.png" alt="">
        <span>注册 广州大学党史红色长廊</span>
    </header>
    <div id="loginframe">
        <form action="">
            <div>
                <input class="gate" id="username" type="text" placeholder="Enter username:" />
                <label for="username">用户名</label>
            </div>
            <div>
                <input class="gate" id="password" type="password" placeholder="Enter password,more than 8 characters:" />
                <label for="password">密码</label>
            </div>
            <div>
                <input class="gate" id="Re_password" type="password" placeholder="Repeat password,the same as above:" />
                <label for="password">重复密码</label>
            </div>
            <input type="submit" id="register" class="button button-glow button-border button-rounded button-caution" value="注 册">
            <div id="login">
                <span>已有账号？点此</span>
                <a href="./login.jsp">登录</a>
            </div>

            
        </form>
    </div>
</body>
</html>