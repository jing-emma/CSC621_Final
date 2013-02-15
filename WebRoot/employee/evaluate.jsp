<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/evaluate.css">
<script type="text/javascript" src="javascript/myRequest.js"></script>
</head>
<body>
<br>
<h2 align="center">Evaluate Information</h2>
<br>
<hr>
<div id="rid" style="display:none"><%= request.getParameter("rid") %></div>
<div id="error" align="center"></div>
<table id="evaluate_table">
<tr class="odd"><td>Days:</td><td><input id="days" /></td></tr>
<tr class="even"><td>Cost:</td><td><input id="cost" /></td></tr>
<tr class="odd"><td>Comment:</td><td><textarea id="comment" rows="5"></textarea></td></tr>
<tr><td></td><td><input type="button" value="Submit" class="confirm_button" onclick="confirmEvaluate()"/><input type="button" value="Cancel" onclick="cancelEvaluate()" class="cancel_button" /></td></tr>
</table>
</body>
</html>