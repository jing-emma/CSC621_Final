<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String rid = request.getParameter("rid");
	OracleConnector con = new OracleConnector();
	String sql = "update repair_jobs "
				+"set status = 'processing', starttime=sysdate "
				+"where rid="+rid;
	con.insertUpdateRecord(sql);
	response.sendRedirect("../createRequest.jsp");
%>
</body>
</html>