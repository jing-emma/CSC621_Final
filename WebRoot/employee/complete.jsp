<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String rid = request.getParameter("rid");
    	
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="../javascript/complete.js"></script>
<title>Complete items</title>
</head>
<body >
<div>

<a href="javascript:void(0)" onClick="add()">Add Item</a> <a href="javascript:void(0)" onClick="del()">Delete Item</a>
<br/>
<table id="root" rid=<%=rid%>>
	<thead>
	<tr>
		<th>Item</th>
		<th>Description</th>
		<th>Unit Price</th>
		<th>Amount</th>
	<tr>
	</thead>
	<tr>
		<td><input type="text"></td>
		<td ><input type="text" size="80"></td>
		<td><input type="text"></td>
		<td><input type="text"></td>
	</tr>

</table>
<button type="button" onClick="coll()">Click Me!</button>
</div> </body> </html>