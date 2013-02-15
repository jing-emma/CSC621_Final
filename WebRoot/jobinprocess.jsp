<%-- 
    Document   : jobinprocess.jsp
    Created on : Nov 21, 2012, 9:41:50 PM
    Author     : admin
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
<title>repair jobs in processing</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/repairJobs.css">

</head>
<body>
<div>
	<%
		String username = (String)session.getAttribute("username");
		String query = "select platenumber, rid, name, description, to_char(starttime, 'YYYY-MM-DD') starttime,"
				+ "estimateddays, fname, lname from repair_jobs natural join cars natural join requests "
				+"left join users on (users.username=requests.personincharge) where status='processing' and requests.username='"
				+ username + "'";
		OracleConnector connector = new OracleConnector();
		List<Map<String, String>> result = connector.getRecords(query);
		if (result.size() == 0) {
			out.println("No reparing job in process");
		} else {
	%>
	<br/>
	<h1 align="center">Repair jobs in processing</h1>
	<hr>
	<br/>
	<table align="center" width="95%">
		
		<tr>
			<th>Job ID</th>
			<th>Car</th>
			<th>Problem</th>
			<th>Status</th>
			<th>Start date</th>
			<th>Estimated complete date</th>
			<th>Person in charge</th>
		</tr>
		<%
			Iterator<Map<String, String>> iter = result.iterator();
			boolean background = true;
				while (iter.hasNext()) {
					Map<String, String> tuple = iter.next();
					//Set<Map.Entry<String, String>> sets = tuple.entrySet();
					//Iterator<Map.Entry<String, String>> tupleIter = sets.iterator();
					String plateNumber = tuple.get("platenumber");
					String rid = tuple.get("rid");
					String name = tuple.get("name");
					String description = tuple.get("description");
					String startTime = tuple.get("starttime");

					Date estimatedComplete = null;

					long estimatedDays = Integer.parseInt(tuple
							.get("estimateddays"));				
					if (estimatedDays != 0) {
						Date start = java.sql.Date.valueOf(startTime);
						long end = start.getTime()
								+ (estimatedDays * 24 * 60 * 60 * 1000);
						estimatedComplete = new Date(end);
					}
					String fname = tuple.get("fname");
					String lname = tuple.get("lname");
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
			
			<td>
				<%
					if (estimatedComplete != null) {
								SimpleDateFormat formater = new SimpleDateFormat(
										"yyyy-MM-dd");
								out.println(formater.format(estimatedComplete));
							}
				%>
			</td>
			<td>
				<%
					if (fname != null || lname != null)
								out.print(fname + " " + lname);
				%>
			</td>

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
