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
<title>My repair jobs</title>
<script type="text/javascript" src="javascript/myRequest.js"></script>
<link rel="stylesheet" type="text/css" href="../css/main.css">

</head>
<body>
<div>
	<%
		String username = (String)session.getAttribute("username");
		String query = "select status, rid, platenumber, description, estimatedcost, estimateddays, category.name, category.cid, category.username categoryleader, " 
				+ "c.fname cfname, c.lname clname, e.fname efname, e.lname elname from repair_jobs natural join "
				+ "requests join category on (category.cid = repair_jobs.cid) join users c on (requests.username = c.username) "
				+ "join users e on (requests.personincharge = e.username) "
				+ "where personincharge ='" + username + "' order by status desc";
		OracleConnector connector = new OracleConnector();
		List<Map<String, String>> result = connector.getRecords(query);
		if (result.size() == 0) {
			out.println("No reparing job");
		} else {
	%>
	<br/>
	<h1 align="center">My repair jobs</h1>
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
			<th>Estimated cost</th>
			<th>Estimated days<br/>to repair</th>
			<th>Person in charge</th>
			<th>Action</th>
		</tr >
		<%
			Iterator<Map<String, String>> iter = result.iterator();
			boolean background = true;
				while (iter.hasNext()) {
					Map<String, String> tuple = iter.next();
					String plateNumber = tuple.get("platenumber");
					int cid = Integer.parseInt(tuple.get("cid"));
					String status = tuple.get("status");
					String rid = tuple.get("rid");
					String categoryName = tuple.get("name");
					String description = tuple.get("description");
					String estimatedCost = "";
					if(!tuple.get("estimatedcost").equals("0")){
						estimatedCost = tuple.get("estimatedcost");
					} 
					String estimatedDays = "";
					if(!tuple.get("estimateddays").equals("0")){
						estimatedDays = tuple.get("estimateddays");
					} 
					String cname = tuple.get("cfname") + " " + tuple.get("clname");
					String ename = "";
					if(tuple.get("efname")!=null){
					ename = tuple.get("efname") ;
					}
					if(tuple.get("elname") != null){
						ename += " " +tuple.get("elname");
					}
					
					//check if current user is the leader of the category
					boolean isLeader = false;
					String categoryLeader = tuple.get("categoryleader");
					if(categoryLeader.equals(username)){
						isLeader = true;
					}
					
				
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
			<td><%= status %></td>
			<td><%= estimatedCost %></td>
			<td><%= estimatedDays %></td>
			<td><%= ename%></td>
			<td>
			<%if(status.trim().equals("new") || status.trim().equals("processing")){ %>
			<a onclick="assignRequest(this)" href="#">Assign to</a>
				<select name="assign_to_employee">
				<%
					List<Map<String, String>> qResult;
					if(isLeader){
						query = "select username, fname, lname from expertise natural join users where cid="+cid;
						connector = new OracleConnector();
						qResult = connector.getRecords(query);
						for(int i = 0; i < qResult.size(); i++){
							String memberId = qResult.get(i).get("username");
							String memberName = qResult.get(i).get("fname") + " " + qResult.get(i).get("lname");
							if(!memberId.equals(username)){
								out.println("<option value="+memberId+">"+memberName+"</option>");
							}
						}
					}else {
						query = "select fname, lname from users where username='"+categoryLeader+"'";
						connector = new OracleConnector();
						qResult = connector.getRecords(query);
						String leader = qResult.get(0).get("fname") + " " + qResult.get(0).get("lname");
						out.println("<option value="+categoryLeader+">"+leader+"</option>");
					}
				 %>
				</select>
		
			<% } 
				if(status.trim().equals("new")){		
			%>
			<a href="#" onclick="evaluateRequest(this)">Evaluate</a>
			<% }
				if(status.trim().equals("processing")){
			 %>
			 <a href="complete.jsp?rid=<%= rid%>">Complete</a>
			 <% }
			 	if(status.trim().equals("completed")){
			  %>
			  <a href="../report.jsp?id=<% out.print(rid); %>">Report</a>
			  <% } %>
			
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
