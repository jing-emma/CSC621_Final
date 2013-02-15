<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.Map"%>
<%@ page import="json.JsonUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String json_string = request.getParameter("content");
	Map json_map = JsonUtil.getMap4Json(json_string);
	
	String rid = (String)json_map.get("rid");
	String days = (String)json_map.get("days");
	String cost = (String)json_map.get("cost");
	String comment = (String)json_map.get("comment");
	comment.replace("'","''");
	
	OracleConnector con = new OracleConnector();
	String sql = "update repair_jobs "
				+"set estimatedcost="+cost+",estimateddays="+days+",comments='"+comment+"' "
				+"where rid="+rid;
	con.insertUpdateRecord(sql);
	response.sendRedirect("../myJobs.jsp");
%>
</body>
</html>