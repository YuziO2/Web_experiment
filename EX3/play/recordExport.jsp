<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>

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
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY); 

    if(request.getParameter("queryType").equals("GENERAL")){
        String sql="SELECT * FROM "+tableName+" where username=\""+username+"\" order by date desc"; 
        ResultSet rs = stmt.executeQuery(sql);
        out.print("[");
        while(rs.next()){
            out.print("{\"answerID\":\""+rs.getString("answerID")+"\", \"userAnswer\":\""+rs.getString("userAnswer")+"\", \"correctAnswer\":\""+rs.getString("correctAnswer")+"\", \"date\":\""+rs.getString("date")+"\"}");
            if(rs.next()){//后续依然有项目
                out.print(",");
                rs.previous();
            }
            else{//最后一项
            }
        }
        out.print("]");
    }
    else{

        String sql="SELECT * FROM questions where id in ("+request.getParameter("ids")+") order by field(id,"+request.getParameter("ids")+")"; 
        ResultSet rs = stmt.executeQuery(sql);
        out.print("[");
        while(rs.next()){
            out.print("{\"question\":\""+rs.getString("question")+"\", \"A\":\""+rs.getString("A")+"\", \"B\":\""+rs.getString("B")+"\", \"C\":\""+rs.getString("C")+"\"}");
            if(rs.next()){//后续依然有项目
                out.print(",");
                rs.previous();
            }
            else{//最后一项
            }
        }
        out.print("]");
    }
%>