<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	session.putValue("username","jz570129@sju.edu");
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
<div>
	<table>
		<tr>
			<td>Address Line1:</td>
			<td><input id="address1" type="text" width="300" value="<%= address1 %>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td>Address Line2:</td>
			<td><input id="address2" type="text" width="300" value="<%= address2 %>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td>Town/City:</td>
			<td><input id="city" type="text" width="150" value="<%= city %>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td>Country</td>
			<td><input id="country" type="text" width="100" value="<%= country %>" disabled="disabled" /></td>
		</tr>
		<tr>
			<td>Phone Number:</td>
			<td><input id="phone" type="text" width="100" value="<%= phone %>" disabled="disabled"/></td>
		</tr>
	</table>
</div>
<div id="update">
	<table>
		<tr>
			<td><input type="button" value="Update" onClick="update()" /></td>
		</tr>
	</table>
</div>
<div id="confirm" style="display:none;">
	<table>
		<tr>
			<td><input type="button" value="Confirm" onClick="addressChange(true)"/></td>
			<td><input type="button" value="Cancel" onClick="addressChange(false)" /></td>
		</tr>
	</table>
</div>
<div id="address_id" style="display:none"><%= address_id %></div>
</body>
</html>