<%-- 
    Document   : signin
    Created on : Nov 20, 2012, 9:36:33 PM
    Author     : Jing Zhao
--%>
<%@page import="db.OracleConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>

<% 
    String uname = request.getParameter("username");
    String passwd = request.getParameter("password");
    String query = "select password from users where username = '" + uname + "'";
    OracleConnector connector = new OracleConnector();
    
    List<Map<String,String>> result = connector.getRecords(query);
    if(result.size() == 0 ){
        out.println("No such user");
        Thread.currentThread().sleep(5000);
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        //response.setHeader("Location", "../index.jsp");
    } else {
       if(!passwd.equals(result.get(0).get("PASSWORD"))){
           out.println("Incorrect password");
           response.flushBuffer();
           //Thread.currentThread().sleep(5000);
           response.setStatus(response.SC_MOVED_TEMPORARILY);
           //response.setHeader("Location", "../index.jsp");
           response.sendRedirect("../index.jsp");
       } else {
           response.setStatus(response.SC_MOVED_TEMPORARILY);
           response.setHeader("Location", "user.jsp");
           session.putValue("username",uname);
       }
    }

%>
