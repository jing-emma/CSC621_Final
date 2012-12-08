<%-- 
    Document   : signup.jsp
    Created on : Nov 21, 2012, 2:51:50 PM
    Author     : admin
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="db.OracleConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    String uname = request.getParameter("username");
    String passwd = request.getParameter("password");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    
    OracleConnector connector = new OracleConnector();
    String query = "select * from users where username = '" + uname + "'";
    List<Map<String,String>> result = connector.getRecords(query);
    if(result.size() != 0 ){
       out.println(2);
    } else {
       query = "insert into users values('"+uname+"','"+passwd+"','"+fname+"','"+lname+"')";
       if(connector.insertUpdateRecord(query))
           out.println(0);
       else
           out.println(1);
    }

%>

