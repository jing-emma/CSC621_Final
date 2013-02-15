<%-- 
    Document   : jobcompleted.jsp for employees
    Created on : Nov 21, 2012, 9:41:50 PM
    Author     : Jing Zhao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.OracleConnector"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All completed repair jobs</title>
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
<div>
	<%
		String username = (String)session.getAttribute("username");
		String query = "select rid, platenumber, description, to_char(starttime,'YYYY-MM-DD') starttime, to_char(completetime,'YYYY-MM-DD') completetime, category.name, " 
				+ "c.fname cfname, c.lname clname, e.fname efname, e.lname elname from repair_jobs natural join "
				+ "requests join category on (category.cid = repair_jobs.cid) join users c on (requests.username = c.username) "
				+ "left join users e on (requests.personincharge = e.username) "
				+ "where status='completed'";
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
			<th>Customer</th>
			<th>Plate number</th>
			<th>Problem</th>
			<th>Category</th>
			<th>Status</th>
			<th>Start date</th>
			<th>Complete date</th>
			<th>Person in charge</th>
			<th>Report</th>
		</tr >
		<%
			Iterator<Map<String, String>> iter = result.iterator();
			boolean background = true;
				while (iter.hasNext()) {
					Map<String, String> tuple = iter.next();
					String plateNumber = tuple.get("platenumber");
					String rid = tuple.get("rid");
					String categoryName = tuple.get("name");
					String description = tuple.get("description");
					String startTime = tuple.get("starttime");
					String completeTime = tuple.get("completetime");
					String cname = tuple.get("cfname") + " " + tuple.get("clname");
					String ename = tuple.get("efname") + " " + tuple.get("elname");

		%>
		<% if(background) {
			background = false; %>
			<tr align="center" style="background-color:#E9E9E9">
		
		<% }else { 
			background = true; %>
			<tr align="center">
		<% } %>
			<td><a href="../requestDetail.jsp?rid=<%= rid %>"><%= rid%></a></td>
			<td><%= cname %></td>
			<td><%= plateNumber %></td>
			<td><%= description %></td>
			<td><%= categoryName%></td>
			<td>Completed</td>
			<td><%= startTime %></td>
			<td><%= completeTime %></td>
			<td><%= ename%></td>
			<td><a href="../report.jsp?id=<% out.print(rid); %>">Report</a></td>

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
