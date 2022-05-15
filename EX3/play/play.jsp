<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileWriter" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>永远跟党走</title>
    <script src="../import/jquery-3.6.0.js"></script>
    <script src="./index.js" defer></script>
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://www.bootcss.com/p/buttons/css/buttons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-material@1.0.0/icheck-material.min.css" />
</head>

<%
    File dynamicQuestion = new File(getServletContext().getRealPath("/")+"\\EX3\\play","dynamicQuestion.json");
    if(dynamicQuestion.exists())//如果原来存在，便删除
        dynamicQuestion.delete();
    dynamicQuestion.createNewFile();

    //加载驱动程序 
    String driverName="com.mysql.cj.jdbc.Driver"; 
    //数据库信息
    String userName="root"; 
    //密码 
    String userPasswd="yu130014"; 
    //数据库名 
    String dbName="hongdb"; 
    //表名 
    String tableName="questions"; 
    //将数据库信息字符串连接成为一个完整的url
    String url="jdbc:mysql://localhost/"+dbName+"?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&user="+userName+"&password="+userPasswd; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection conn=DriverManager.getConnection(url); 
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY); 
    String sql="SELECT * FROM "+tableName+" ORDER BY RAND() LIMIT 5"; 
    ResultSet rs = stmt.executeQuery(sql);

    BufferedWriter myWriter = new BufferedWriter (new OutputStreamWriter (new FileOutputStream (dynamicQuestion,true),"UTF-8"));
    myWriter.write("[\n");
    int counter=1;
    while(rs.next()){
        myWriter.write("    {\n");
        myWriter.write("        \"Question\": \""+counter+"."+rs.getString("question")+"\",\n");
        myWriter.write("        \"A\": \""+rs.getString("A")+"\",\n");
        myWriter.write("        \"B\": \""+rs.getString("B")+"\",\n");
        myWriter.write("        \"C\": \""+rs.getString("C")+"\",\n");
        myWriter.write("        \"Answer\": \""+rs.getString("answer")+"\"\n");
        if(rs.next()){//后续依然有项目
            myWriter.write("    },\n");
            rs.previous();
        }
        else{//最后一项
            myWriter.write("    }\n");
        }
        counter++;
    }
    myWriter.write("]");
    myWriter.close();

%>

<body>
    <div id="center">
        <span id="head">欢迎进入广大党史答题系统！</span>
        <div class="loginimg">
            <img src="./GZHU.png" alt="">
            <img src="./Danghui.png" alt="">
        </div>
        <div id="question"></div>
        <form>
            <ul>
                <li>
                    <div class="icheck-material-deeporange">
                        <input type="radio" name="select" id="radioA" value="A"><label for="radioA"></label>
                    </div>
                </li>
                <li>
                    <div class="icheck-material-deeporange">
                        <input type="radio" name="select" id="radioB" value="B"><label for="radioB"></label>
                    </div>
                </li>
                <li>
                    <div class="icheck-material-deeporange">
                        <input type="radio" name="select" id="radioC" value="C"><label for="radioC"></label>
                    </div>
                </li>
            </ul>
        </form>
        <button id="enter"
            class="button button-glow button-border button-rounded button-caution">进&nbsp;&nbsp;入</button>
        <button id="submit" type="submit" class="button button-glow button-border button-rounded button-caution"
            style="display:none">提&nbsp;&nbsp;交</button>
        <span>
            <button id="refresh" class="button button-glow button-border button-rounded button-caution"
                style="display:none" onclick="location.reload()">再&nbsp;&nbsp;次&nbsp;&nbsp;答&nbsp;&nbsp;题</button>
            <button id="back" class="button button-glow button-border button-rounded button-caution"
                style="display:none"
                onclick="window.location.href='../display.jsp'">返&nbsp;&nbsp;回&nbsp;&nbsp;首&nbsp;&nbsp;页</button>
        </span>
    </div>
</body>

</html>