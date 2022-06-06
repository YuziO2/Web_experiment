<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.mysql.cj.jdbc.Driver" %>

<%
    //加载驱动程序 
    String driverName="com.mysql.cj.jdbc.Driver"; 
    //数据库信息
    String userName="root"; 
    //密码 
    String userPasswd=System.getenv("MYSQL_ROOT_PASSWORD"); 
    //数据库名 
    String dbName="hongdb"; 
    //表名 
    String tableName="articles"; 
    //将数据库信息字符串连接成为一个完整的url

    String url="jdbc:mysql://database/"+dbName+"?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&user="+userName+"&password="+userPasswd; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection conn=DriverManager.getConnection(url); 
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    if(request.getParameter("queryType").equals("GENERAL")){//请求顶栏
        String sql="SELECT * FROM "+tableName+" ORDER BY columns asc";
        ResultSet rs = stmt.executeQuery(sql);
        int current=-1;
        out.print("[");
        while (rs.next()){
            if(Integer.parseInt(rs.getString("columns"))!=current)//判断是否为数组头
                out.print("[");//是，打印左括号
            current=Integer.parseInt(rs.getString("columns"));
            out.print("\""+rs.getString("headline")+"\"");
            if(!rs.next()){//判断是否为大数组最后一个
                out.print("]");//是，打印右括号
                rs.previous();
            }
            else{
                if((Integer.parseInt(rs.getString("columns")))==current){//判断是否为小数组尾
                    out.print(",");//不是，打印逗号
                    rs.previous();
                }
                else{
                    out.print("],");//是，打印右括号和逗号
                    rs.previous();
                }
            }
        }
        out.print("]");
    }
    else {//请求文章
        String sql="SELECT * FROM "+tableName+" where headline=\""+request.getParameter("headline")+"\""; 
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()){
            out.print(rs.getString("body"));
        }
    }
%>