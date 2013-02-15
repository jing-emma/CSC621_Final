<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/requestDetail.css"></link>
<title>Insert title here</title>
</head>
<body>
<%
	String rid = request.getParameter("rid");
	String sql = "select requests.username,platenumber,repair_jobs.name as title,description,category.name as cname "
				+"from requests inner join repair_jobs on(requests.rid=repair_jobs.rid) "
				+"				inner join category on(repair_jobs.cid=category.cid) "
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
		title = target.get("title");
		title.replace("''","'");
		category = target.get("cname");
		description = target.get("description");
		description = description.replace("''","'");
		//path = target.get("path");
	}
%>
<br/>
<br/>
<h2 align="center">Request Detail</h2>
<br/>
<hr>
<br/>
<table id="detail_table">
	<tr class="odd"><td>Title:</td><td><%= title %></td></tr>
	<tr class="even"><td>Customer:</td><td><%= username %></td></tr>
	<tr class="odd"><td>Plate:</td><td><%= plate %></td></tr>
	<tr class="even"><td>Category:</td><td><%= category %></td></tr>
	<tr class="odd"><td>Description:</td><td><%= description %></td></tr>
	<%
		sql = "select * from images where rid="+rid;
		results = con.getRecords(sql);
		int size = results.size();
		if(size>0)
		{
			out.print("<tr><td id='picture_table' colspan='2'>");
			out.print("<table id='picture_table'>");
			int i=0;
			for(;i<size;i++)
			{
				Map<String,String> target = results.get(i);
				if(i%2==0)
					out.print("<tr>");
				
				out.print("<td>");
				path="images/upload/"+target.get("path");
				out.print("<img src='"+path+"' class='img' />");
					
				out.print("</td>");
				
				if(i%2==1)
					out.print("</tr>");
			}
			if(i%2==1)
			{
				out.print("<td></td></tr>");
			}
				
			out.print("</table>");
			out.print("</td></tr>");
		}		
	%>
	
</table>
</body>
</html>