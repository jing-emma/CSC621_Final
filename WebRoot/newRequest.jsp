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
<body onLoad="initAjax()">
<%
	session.putValue("username","guojun.blue@gmail.com");
	session.putValue("img","");
	String username = (String)session.getValue("username");
	
	
	OracleConnector con = new OracleConnector();
	String queryString = "select platenumber from user_car where username='"+username+"'";
	List<Map<String,String>> results = con.getRecords(queryString);
	

%>
<table>
	<tr><td>Title</td><td><input type="text" id="name" /></td></tr>
	<tr><td>Category</td><td><select id="category">
								<option value="body">body
								<option value="brake">brake
								<option value="collision">collision
								<option value="engine">engine
								<option value="transmission">transmission
							 </select></td></tr>
	<tr><td>Plate</td><td><select id="plate">
							<%
								for(int i=0;i<results.size();i++)
								{
									
									Map<String,String> target = results.get(i);
									String temp = target.get("platenumber");
									out.print("<option value="+temp+">"+temp);
								}
							%>
						 </select></td></tr>
	<tr><td>Description</td><td><textarea id="description"></textarea></td></tr>
	<tr>
		<td colspan="2">
		<form method="post" action="server/requestImgUpload.jsp" enctype="multipart/form-data" target="win" onsubmit="imgSubmit()">
			<table>
				<tr><td><input type="file" name="name" /></td><td><input type="submit" value="Upload"></td></tr>
			</table>
		</form>
		</td>
	</tr>
	<tr><td></td><td><input type="button" value="Submit" onclick="requestAjax()"  /><input type="button" value="Cancel" onclick="cancelAdd()" /></td></tr>
</table>


</body>
</html>