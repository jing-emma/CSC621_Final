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
<title>repair jobs in processing</title>
</head>
<body>

	<%
		//to do add username from session in query
		String query = "select platenumber, rid, name, description, to_char(starttime, 'YYYY-MM-DD') starttime,"
				+ "to_char(completetime, 'YYYY-MM-DD') completetime from repair_jobs natural join cars natural join requests where status='completed'";
		OracleConnector connector = new OracleConnector();
		List<Map<String, String>> result = connector.getRecords(query);
		if (result.size() == 0) {
			out.println("No completed reparing job");
		} else {
	%>
	<table width="80%">
		<tr>
			<td colspan="5">Completed repair jobs</td>
		</tr>
		<tr>
			<th>Car</th>
			<th>Problem</th>
			<th>Status</th>
			<th>Start date</th>
			<th>Complete date</th>
			<th>Report</th>
		</tr>
		<%
			Iterator<Map<String, String>> iter = result.iterator();
				while (iter.hasNext()) {
					Map<String, String> tuple = iter.next();
					String plateNumber = tuple.get("platenumber");
					String rid = tuple.get("rid");
					String name = tuple.get("name");
					String description = tuple.get("description");
					String startTime = tuple.get("starttime");
					String completeTime = tuple.get("completetime");

		%>
		<tr>
			<td>
				<%
					out.print(plateNumber);
				%>
			</td>
			<td>
				<%
					out.print(description);
				%>
			</td>
			<td>Processing</td>
			<td>
				<%
					out.print(startTime);
				%>
			</td>
			<td>
				<%
					out.print(completeTime);
				%>
			</td>
			<td><a href="report.jsp?id=<% out.print(rid); %>">Report</a></td>

		</tr>
		<%
			}
		%>


	</table>
	<%
		}
	%>
</body>
</html>
