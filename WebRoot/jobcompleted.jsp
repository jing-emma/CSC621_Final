<%-- 
    Document   : jobcompleted.jsp
    Created on : Nov 21, 2012, 9:41:50 PM
    Author     : Jing Zhao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="db.OracleConnector"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>completed repair jobs</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div>
	<%
		String username = (String)session.getAttribute("username");
		String query = "select platenumber, rid, name, description, to_char(starttime, 'YYYY-MM-DD') starttime,"
				+ "to_char(completetime, 'YYYY-MM-DD') completetime from repair_jobs natural join cars natural join requests "
				+ "where status='completed' and requests.username='" + username + "'";
		OracleConnector connector = new OracleConnector();
		List<Map<String, String>> result = connector.getRecords(query);
		if (result.size() == 0) {
			out.println("No completed reparing job");
		} else {
	%>
	<br/>
	<h1 align="center">Completed repair jobs</h1>
	<hr>
	<br/>
	<table align="center" width="95%">

		<tr >
			<th>Job ID</th>
			<th>Car</th>
			<th>Problem</th>
			<th>Status</th>
			<th>Start date</th>
			<th>Complete date</th>
			<th>Report</th>
		</tr >
		<%
			Iterator<Map<String, String>> iter = result.iterator();
			boolean background = true;
				while (iter.hasNext()) {
					Map<String, String> tuple = iter.next();
					String plateNumber = tuple.get("platenumber");
					String rid = tuple.get("rid");
					String name = tuple.get("name");
					String description = tuple.get("description");
					String startTime = tuple.get("starttime");
					String completeTime = tuple.get("completetime");

		%>
		<% if(background) {
			background = false; %>
			<tr align="center" style="background-color:#E9E9E9">
		
		<% }else { 
			background = true; %>
			<tr align="center">
		<% } %>
			<td><a href="requestDetail.jsp?rid=<%= rid %>"><%= rid%></a></td>
			<td><%= plateNumber%></td>
			<td><%= description%></td>
			<td>Processing</td>
			<td><%= startTime%></td>
			<td><%= completeTime%></td>
			<td><a href="report.jsp?id=<% out.print(rid); %>">Report</a></td>

		</tr>
		<%
			}
		%>


	</table>
	<%
		}
	%>
	</div>
</body>
</html>
