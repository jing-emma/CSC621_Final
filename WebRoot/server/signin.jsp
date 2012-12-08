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
    String uname = request.getParameter("uname");
    String passwd = request.getParameter("passwd");
    String query = "select * from users where username = '" + uname + "'";
    OracleConnector connector = new OracleConnector();
    List<Map<String,String>> result = connector.getRecords(query);
    if(result.size() == 0 ){
        out.println("No such user");
    } else {
       if(!passwd.equals(result.get(0).get("password"))){
           out.println("Incorrect password");
          // response.flushBuffer();
           //Thread.currentThread().sleep(5000);
         //  response.setStatus(response.SC_MOVED_TEMPORARILY);
           //response.setHeader("Location", "../index.jsp");
          // response.sendRedirect("../index.jsp");
       } else {
          // response.setStatus(response.SC_MOVED_TEMPORARILY);
          // response.setHeader("Location", "user.jsp");
           session.setAttribute("username",uname);
           session.setAttribute("role", result.get(0).get("role"));
           session.setAttribute("name", result.get(0).get("fname")+" "+result.get(0).get("lname"));
           out.println("OK");
       }
    }

%>
