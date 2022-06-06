<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

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
    else{//已登录，置为未登录
        session.setAttribute("status", 0);
        session.setAttribute("msg","登出成功！");
        response.sendRedirect("login.jsp");
        return;
    }
%>