<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/address.css"></link>
<script type="text/javascript" src="javascript/address.js"></script>
</head>
<body>
<%
	String address_id = "";
	String address1 = "";
	String address2 = "";
	String city = "";
	String country = "";
	String phone = "";
	String username = (String)session.getValue("username");
	String queryString = request.getQueryString();
	OracleConnector con = new OracleConnector();
	if(queryString != null)
	{
		address_id = request.getParameter("id");
		address1 = request.getParameter("address1");
		address2 = request.getParameter("address2");
		city = request.getParameter("city");
		country = request.getParameter("country");
		phone = request.getParameter("phone");
		
		String sql = "select * from address where address_id="+address_id;
		List<Map<String,String>> address = con.getRecords(sql);
		System.out.print(address.size());
		if(address.size() > 0 )
		{
			sql = "update address set address1='"+address1+"',"
					+"address2='"+address2+"',"
					+"city='"+city+"',country='"+country+"',"
					+"phone='"+phone+"' where address_id="+address_id;
			con.insertUpdateRecord(sql);
		}
		else
		{
			sql = "select address_seq.NEXTVAL from dual";
			List<Map<String,String>> results = con.getRecords(sql);
			Map<String,String> result = results.get(0);
			address_id = result.get("NEXTVAL");
			
			sql = "insert into address values("+address_id+",'"+address1+"','"+address2
				+"','"+city+"','"+country+"','"+phone+"')";
			con.insertUpdateRecord(sql);
			
			sql = "insert into user_address values('"+username+"',"+address_id+")";
			con.insertUpdateRecord(sql);
		}
	}
	else
	{	
		String sql = "select * from user_address where username='"+username+"'";
		System.out.println(sql);
		con = new OracleConnector();
		List<Map<String,String>> addresses = con.getRecords(sql);
		
		if(addresses.size() > 0)
		{
			Map<String,String> target = addresses.get(0);
			
			address_id = target.get("address_id");
			
			sql = "select * from address where address_id='"+address_id+"'";
			con = new OracleConnector();
			List<Map<String,String>> results = con.getRecords(sql);
			if(results.size() > 0)
			{
				Map<String,String> temp = results.get(0);
				address1 = temp.get("address1");
				address2 = temp.get("address2");
				city = temp.get("city");
				country = temp.get("country");
				phone = temp.get("phone");
			}
		}
	}   
%>
<br/>
<h2 align="center">Address Information</h2>
<br/>
<hr>
<br/>
<div id="address_content">
	<table id="address_table" cellpadding="5">
		<tr class="gray_row">
			<td>Address Line1:</td>
			<td><input id="address1" type="text" style="height:20px;width:220px" value="<%= address1 %>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td class="address_left">Address Line2:</td>
			<td><input id="address2" type="text" style="height:20px;width:220px" value="<%= address2 %>" disabled="disabled" /></td>
		</tr>
		<tr class="gray_row">
			<td class="address_left">Town/City:</td>
			<td><input id="city" type="text" style="height:20px;width:220px" value="<%= city %>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td class="address_left">Country:</td>
			<td><input id="country" type="text" style="height:20px;width:220px" value="<%= country %>" disabled="disabled" /></td>
		</tr>
		<tr class="gray_row">
			<td class="address_left">Phone Number:</td>
			<td><input id="phone" type="text" style="height:20px;width:220px" value="<%= phone %>" disabled="disabled"/></td>
		</tr>
	</table>
</div>
<div id="update">
	<table id="upate_table">
		<tr>
			<td><input type="button" value="Update" class="update_button"  onClick="update()" /></td>
		</tr>
	</table>
</div>
<div id="confirm" style="display:none;">
	<table id="confirm_table">
		<tr>
			<td><input type="button" value="Confirm" class="confirm_button"  onClick="addressChange(true)"/></td>
			<td><input type="button" value="Cancel" class="cancel_button" onClick="addressChange(false)" /></td>
		</tr>
	</table>
</div>
<div id="address_id" style="display:none"><%= address_id %></div>
</body>
</html>