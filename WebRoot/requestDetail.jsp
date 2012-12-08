<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String rid = request.getParameter("rid");
	String sql = "select * "
				+"from requests inner join repair_jobs on(requests.rid=repair_jobs.rid) "
									+"left join images on(repair_jobs.rid=images.rid) "
				+"where requests.rid="+rid;
	OracleConnector con = new OracleConnector();
	List<Map<String,String>> results =  con.getRecords(sql);
	String username = "";
	String plate = "";
	String title = "";
	String category = "";
	String description ="";
	String path="";
	
	
	if(results.size()>0)
	{
		Map<String,String> target = results.get(0);
		username = target.get("username");
		plate = target.get("platenumber");
		title = target.get("name");
		title.replace("''","'");
		category = target.get("category");
		description = target.get("description");
		description = description.replace("''","'");
		path = target.get("path");
	}
%>
<table>
	<tr><td>Title:</td><td><%= title %></td><td rowspan="5"><%
																if(path != null)
																{
																	out.print("<img width='100' height='100' src='images/upload/"+path+"' />");
																	System.out.println("<img width='100' height='100' src='images/upload/"+path);
																}
															%></td></tr>
	<tr><td>Customer:</td><td><%= username %></td></tr>
	<tr><td>Plate:</td><td><%= plate %></td></tr>
	<tr><td>Category:</td><td><%= category %></td></tr>
	<tr><td>Description:</td><td><%= description %></td></tr>
</table>
</body>
</html>