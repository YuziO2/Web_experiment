<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.mysql.cj.jdbc.Driver" %>

<%
String username = new String((request.getParameter("username")).getBytes("ISO-8859-1"),"UTF-8");
String password = new String(request.getParameter("password"));

//加载驱动程序 
String driverName="com.mysql.cj.jdbc.Driver"; 
//数据库信息
String userName="root"; 
//密码 
String userPasswd="yu130014"; 
//数据库名 
String dbName="hongdb"; 
//表名 
String tableName="users"; 
//将数据库信息字符串连接成为一个完整的url
 
String url="jdbc:mysql://localhost/"+dbName+"?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection conn=DriverManager.getConnection(url); 
Statement stmt = conn.createStatement(); 
String sql="SELECT * FROM "+tableName+" where username=\""+username+"\""; 
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>
<h1>使用 POST 方法读取数据</h1>
<ul>
<li><p><b>用户名:</b>

   <%=username%>
</p></li>
<li><p><b>密码:</b>
   <%= password%>
</p></li>
</ul>
<div>
<% 
if(rs.next()){
    if(rs.getString("password").equals(password)){//密码正确
        out.print("欢迎您！"+username);
    }
    else{//密码错误
        out.print("密码错误！");
        session.setAttribute("msg","密码错误力！");
        response.sendRedirect("login.jsp");
    }
}
else{//没有账号
    out.print("无此用户，请注册！");
}
%>
</div>
</body>
</html>