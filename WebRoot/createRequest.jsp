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
<script type="text/javascript" src="javascript/new_request.js"></script>
</head>
<body>
<div id="unconfirm">
	Unconfirm:
	<table>
		<tr><td>rid</td><td>Title</td><td>Category</td><td>Plate</td><td>Action</td></tr>
		<%
			session.putValue("username","guojun.blue@gmail.com");
			String username = (String)session.getValue("username");
			
			OracleConnector con = new OracleConnector();
			String queryString = "select repair_jobs.rid,name,category,platenumber "
								+"from repair_jobs inner join requests on(repair_jobs.rid=requests.rid) "
								+"where username='"+username+"' and personincharge is null and status='new'";
			List<Map<String,String>> results = con.getRecords(queryString);
			for(int i=0;i<results.size();i++)
			{
				Map<String,String> target = results.get(i);
				String rid = target.get("rid");
				String name = target.get("name");
				String category = target.get("category");
				String platenumber = target.get("platenumber");
				out.print("<tr><td>"+rid+"</td><td>"+name+"</td><td>"+category+"</td><td>"+platenumber+"</td><td><input type='button' value='Cancel' onclick='cancelRequest(this)' /></td></tr>");
			}
		%>
	</table>
</div>
	<br>
<div id="confirm">
	<table>
		<tr><td>rid</td><td>Title</td><td>Category</td><td>Plate</td><td>Start date</td><td>Estimate</td><td>Action</td></tr>
		<%
			queryString = "select * "
						+"from repair_jobs inner join requests on(repair_jobs.rid=requests.rid) "
						+"where username='"+username+"' and personincharge is not null and status='new'";
			results = con.getRecords(queryString);
			for(int i=0;i<results.size();i++)
			{
				Map<String,String> target = results.get(i);
				String rid = target.get("RID");
				String name = target.get("NAME");
				String category = target.get("CATEGORY");
				String platenumber = target.get("PLATENUMBER");
				String start = target.get("STARTTIME");
				String estimate = target.get("ESTIMATEDDAYS");
				out.print("<tr><td>"+rid+"</td><td>"+name+"</td><td>"+category+"</td><td>"+platenumber+"</td><td>"
						+start+"</td><td>"+estimate+"</td><td><input type='button' value='Confirm' onclick='confirmRequest(this)' /></td>"
						+"<td><input type='button' value='Cancel' onclick='cancelRequest(this)'/></td></tr>");
			}
		%>
	</table>
</div>
<a href="newRequest.jsp">New Request</a>
</body>
</html>