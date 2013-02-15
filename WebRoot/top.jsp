<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>
<body bgcolor="8DCA66">
<table width="100%">
	<tr>
		<td width="15%" valign="top"><img alt="logo" width="170px" height="90px" src="images/Logo.jpg"></img>
		</td>
		<td width="70%"><h1>Welcome to Crash Garage</h1>
		</td>
		<td valign="top" width="15%">
		<% out.print(session.getAttribute("name"));%>
			<a class="logout" href="server/logout.jsp">Logout</a>
		</td>
	</tr>

</table>
</body>

</html>