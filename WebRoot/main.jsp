<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% session.setAttribute("username", "guojun.blue@gmail.com"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="javascript/address.js"></script>
</head>
<frameset rows="60,*" cols="*"  >
  <frame src="top.jsp" name="topFrame" scrolling="no">
  <frameset cols="180,*" name="btFrame"  framespacing="0">
    <frame src="menu.jsp" noresize name="menu" scrolling="yes">
    <frame noresize name="main" scrolling="yes">
  </frameset>
</frameset>
</html>