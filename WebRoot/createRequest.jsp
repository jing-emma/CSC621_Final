<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css"></link>
<script type="text/javascript" src="javascript/new_request.js"></script>
</head>
<body>

	<%
		String username = (String)session.getValue("username");
		
		OracleConnector con = new OracleConnector();
		String queryString = "select repair_jobs.rid,repair_jobs.name as rname, description, category.name as cname,platenumber, estimateddays, estimatedcost, comments "
							+"from category inner join repair_jobs on(category.cid=repair_jobs.cid) " 
										  +"inner join requests on(repair_jobs.rid=requests.rid) "
							+"where requests.username='"+username+"' and status='new'";
		List<Map<String,String>> results = con.getRecords(queryString);
		
		if(results.size()>0)
		{
	%>
<div>
<br/>
<h1 align="center">Request Unconfirmed</h1>
<hr>
<br/>



	<table align="center" width="95%">
		<tr>
			<th>Job ID</th>
			<th>Car</th>
			<th>Description</th>
			<th>Category</th>
			<th>Estimated cost</th>
			<th>Estimated days<br/>to repair</th>
			<th>Comments</th>
			<th>Action</th>
		</tr>
		<%
				Iterator<Map<String, String>> iter = results.iterator();
				boolean background = true;
				while (iter.hasNext()) {
					Map<String, String> target = iter.next();
				String rid = target.get("rid");
				String name = target.get("rname");
				String description = target.get("description");
				String category = target.get("cname");
				String plateNumber = target.get("platenumber");
				String estimatedCost = "";
				if(!target.get("estimatedcost").equals("0")){
					estimatedCost = target.get("estimatedcost");
				} 
				String estimatedDays = "";
				if(!target.get("estimateddays").equals("0")){
					estimatedDays = target.get("estimateddays");
				} 
				String comments = "";
				if(target.get("comments")!= null){
					comments = target.get("comments");
				} 
				//out.print("<td class='rid_td'>"+rid+"</td><td class='title_td'>"+name+"</td><td class='category_td'>"+category+"</td><td class='plate_td'>"+platenumber+"</td><td class='action_td'><input type='button' value='Confirm' class='confirm_button' onclick='confirmRequest(this)' /><input type='button' value='Cancel' class='cancel_button' onclick='cancelRequest(this)' /></td></tr>");
		
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
			<td><%= category%></td>
			<td><%= estimatedCost%></td>
			<td><%= estimatedDays%></td>
			<td><%= comments%></td>
			<td>
				<input type='button' value='Confirm' class='confirm_button' rid='<%= rid %>' onclick='confirmRequest(this)' />
				<input type='button' value='Cancel' class='cancel_button' rid='<%= rid %>' onclick='cancelRequest(this)' />
			</td>
			</tr>
		<%
			}
		%>
	</table>
</div>
		<%
		}
		else
			out.print("<div class='title'>You don't have request!</div>");
		%>
<div id="new_request" align="center">
	<a href="newRequest.jsp">New Request</a>
</div>
</body>
</html>