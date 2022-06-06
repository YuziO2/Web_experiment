<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
    String username = new String((String)session.getAttribute("username"));
    String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
    String age = new String(request.getParameter("age"));
    String password = new String(request.getParameter("password"));

    //加载驱动程序 
    String driverName="com.mysql.cj.jdbc.Driver"; 
    //数据库信息
    String userName="root"; 
    //密码 
    String userPasswd=System.getenv("MYSQL_ROOT_PASSWORD"); 
    //数据库名 
    String dbName="hongdb"; 
    //表名 
    String tableName="users"; 
    //将数据库信息字符串连接成为一个完整的url
    
    String url="jdbc:mysql://database/"+dbName+"?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&user="+userName+"&password="+userPasswd; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection conn=DriverManager.getConnection(url); 
    Statement stmt = conn.createStatement(); 
%>
<%!
    boolean isNumber(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
%>
<%
    String sql="UPDATE `"+dbName+"`.`"+tableName+"` SET `name` = '"+name+"', `age` = '"+age+"', `password` = '"+password+"' WHERE (`username` = '"+username+"');"; 
    if(!isNumber(age)){sql="UPDATE `"+dbName+"`.`"+tableName+"` SET `name` = '"+name+"', `password` = '"+password+"' WHERE (`username` = '"+username+"');";}
    stmt.executeUpdate(sql);
    session.setAttribute("msg","修改成功！");
    session.setAttribute("password",password);
    session.setAttribute("name",name);
    session.setAttribute("age",age);
    response.sendRedirect("Personal.jsp");
%>