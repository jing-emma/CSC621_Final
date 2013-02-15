<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="db.OracleConnector"					%>
<%@page import="java.util.Map"						%>
<%@page import="java.util.List"						%>

<%
	String myCurPass = request.getParameter("curpass");
	String myNewPass = request.getParameter("newPass");

	OracleConnector myCon = new OracleConnector();
	String checkQuery = "SELECT username from users where password="+myCurPass+" and username='"+session.getAttribute("username")+"'";
	
	List<Map<String, String>> checkQueryResult = myCon.getRecords(checkQuery);
	
	if(checkQueryResult.isEmpty()){
		out.println(0);
	}else{
	System.out.print("return 1");
		String changeQuery = "update users set password="+myNewPass+" where username='"+session.getAttribute("username")+"'";
		if(myCon.insertUpdateRecord(changeQuery))
			out.println(1);
	}
	
	
%>