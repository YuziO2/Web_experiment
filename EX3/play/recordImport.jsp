<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>

<%
    String answerID = new String(request.getParameter("answerID"));
    String userAnswer = new String(request.getParameter("userAnswer"));
    String correctAnswer = new String(request.getParameter("correctAnswer"));
    String date = new String(request.getParameter("date"));
    //判断是否已登录
    if((int)session.getAttribute("status")==1){//已登录，写入数据库
        String username = new String((String)session.getAttribute("username"));
        
        //加载驱动程序 
        String driverName="com.mysql.cj.jdbc.Driver"; 
        //数据库信息
        String userName="root"; 
        //密码 
        String userPasswd=System.getenv("MYSQL_ROOT_PASSWORD"); 
        //数据库名 
        String dbName="hongdb"; 
        //表名 
        String tableName="record"; 
        //将数据库信息字符串连接成为一个完整的url
        
        String url="jdbc:mysql://database/"+dbName+"?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&user="+userName+"&password="+userPasswd; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        Connection conn=DriverManager.getConnection(url); 
        Statement stmt = conn.createStatement(); 
        
        stmt.executeUpdate("INSERT INTO `hongdb`.`record` (`username`, `answerID`, `userAnswer`, `correctAnswer`, `date`) VALUES ('"+username+"', '"+answerID+"', '"+userAnswer+"', '"+correctAnswer+"', '"+date+"');");
    }
    else{//未登录，什么也不做
    }
%>