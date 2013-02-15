<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/user.css">
<script type="text/javascript" src="javascript/passwordChange.js"></script>
<title>Insert title here</title>
</head>
<body>

<%@page import="db.OracleConnector"%>
<%@page import="java.util.Map"	   %>
<%@page import="java.util.List"	   %>
<% 
	OracleConnector cn = new OracleConnector();
	String query = "SELECT fname, lname from users where username ='" +session.getAttribute("username")+"'";
	String addressQuery = "SELECT address1, address2 from address join user_address using(address_id) where username='"+session.getAttribute("username")+"'";
	//out.println(query);
	List<Map<String, String>> result = cn.getRecords(query);
	cn = new OracleConnector();
	List<Map<String, String>> addressResult = cn.getRecords(addressQuery); 
%>

<table align="center">
	<tr><td><%= result.get(0).get("fname") %> <%= result.get(0).get("lname") %></td></tr>
	<% if (!addressResult.isEmpty()){ %>
	<tr><td><%=  addressResult.get(0).get("address1")%><br><%= addressResult.get(0).get("address2") %></td></tr>
	<%} else{ %>
		<tr><td>you don't have any addresses registered yet</td></tr>
	<%} %>
	<tr><td><input type="submit" value="change password" onclick="displayForm();"><input type="submit" value="hide" onclick="hideForm();"><input type="submit" value="clear fields" onclick="return resetForm();"></td></tr>
</table>

<div id="changePassBox" class="changePassBox">
<form  id="changePassForm" onsubmit="return changePassword();">
	<fieldset>
		<legend>Change my current password</legend>
		<table>
		<tr><td>Current Password: </td><td><input type="password" id="curPass"></td></tr>
		<tr><td>New Password: </td><td><input type="password" id="newPass"></td></tr>
		<tr><td>Confirm New Password: </td><td><input type="password" id="confNewPass"></td></tr>
		<tr><td><input type="submit" value="submit" id="changePassSubmit"></td><tr>
		</table>
	</fieldset>
</form>
</div>
</body>
</html>