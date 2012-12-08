<%-- 
    Document   : repairing.jsp
    Created on : Nov 21, 2012, 9:41:50 PM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="db.OracleConnector"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>repair jobs in processing</title>
</head>
<body>
<!-- Customer Info -->
	<%
		String repairId = request.getParameter("id");

		//to do add username from session in query
		String query = "select * from repair_jobs"
				+ " natural join requests natural join users natural join user_address natural join address where rid="
				+ repairId;
		OracleConnector connector = new OracleConnector();
		List<Map<String, String>> result = connector.getRecords(query);
		System.out.println("tuple size " + result.size());
		if (result.size() == 0) {
			out.println("exception");
		} else {
			//repairId is key only one tuple returned
			Map<String, String> tuple = result.get(0);
			String fname = tuple.get("fname");
			String lname = tuple.get("lname");
			String address1 = tuple.get("address1");
			String address2 = tuple.get("address2");
			String city = tuple.get("city");
			String country = tuple.get("country");
			String phone = tuple.get("phone");
			String username = tuple.get("username");
			String plateNumber = tuple.get("platenumber");
	%>
	<p>
	<h3>
		Customer:
		<%
		out.println(lname + ", " + fname);
	%>
	</h3>

	<%
		out.println(address1);
	%>
	<br />
	<%
		out.println(address2);
	%>
	<br />
	<%
		out.println(city + ", " + country);
	%>
	<br />
	<%
		out.println(phone);
	%>

	</p>
	<hr>
	
	<!-- Car Info -->
	<%
		query = "select vin, make, model, to_char(year, 'YYYY') year from user_car natural join cars where platenumber='"
					+ plateNumber + "' and username='" + username + "'";
			System.out.println(query);
			connector = new OracleConnector();
			result = connector.getRecords(query);
			//platenumber is key, only one tuple returned
			tuple = result.get(0);
			String vin = tuple.get("vin");
			String make = tuple.get("make");
			String model = tuple.get("model");
			String year = tuple.get("year");
	%>
	<p>
	<h3>Vehicle</h3>
	<table>
		<tr>
			<td>Plate Number:</td>
			<td>
				<%
					out.println(plateNumber);
				%>
			</td>
			<td>VIN:</td>
			<td>
				<%
					out.println(vin);
				%>
			</td>
		</tr>
		<tr>
			<td>Make:</td>
			<td>
				<%
					out.println(make);
				%>
			</td>
			<td>Model:</td>
			<td>
				<%
					out.println(model);
				%>
			</td>
		</tr>
		<tr>
			<td>Year:</td>
			<td>
				<%
					out.println(year);
				%>
			</td>
		</tr>
	</table>
	</p>
	<hr>
	
	<!-- Repair job -->
	<%
		query ="select to_char(starttime, 'YYYY-MM-DD') starttime, to_char(completetime, 'YYYY-MM-DD') completetime from repair_jobs where rid="+repairId;
		connector = new OracleConnector();
		result = connector.getRecords(query);
		if (result.size() > 0) {
			tuple = result.get(0);
			String startTime = tuple.get("starttime");
			String completeTime = tuple.get("completetime"); %>
			<p>
			<h3>Repair job:</h3>
			Job ID: <% out.println(repairId); %><br/>
			Start time: <% out.println(startTime); %><br/>
			Complete time:  <% out.println(completeTime); %><br/>
			</p>
			<hr>
			<%} %>

	<!-- cost details -->
	<%
		query = "select * from cost_details where rid=" + repairId;
		connector = new OracleConnector();
		result = connector.getRecords(query);
		if (result.size() > 0) {
	%>
	<p>
	<h3>Cost:</h3>
	<table>
		<tr>
			<th>Item</th>
			<th>Description</th>
			<th>Unit price</th>
			<th>Qty</th>
			<th>Subtotal</th>
		</tr>

		<%
			Iterator<Map<String, String>> iter = result.iterator();
					float total = 0;
					while (iter.hasNext()) {
						tuple = iter.next();
						String item = tuple.get("item");
						String description = tuple.get("description");
						float unitprice = Float.parseFloat(tuple
								.get("unitprice"));
						float qty = Float.parseFloat(tuple.get("amount"));
						float subTotal = unitprice * qty;
						total += subTotal;
		%>
		<tr>
			<td>
				<%
					out.println(item);
				%>
			</td>
			<td>
				<%
					out.println(description);
				%>
			</td>
			<td>
				<%
					out.println(unitprice);
				%>
			</td>
			<td>
				<%
					out.println(qty);
				%>
			</td>
			<td>
				<%
					out.println(subTotal);
				%>
			</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<th>SubTotal:</th>
			<td>
				<%
					out.println(total);
				%>
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<th>Sales tax:</th>
			<td>
				<%
					float tax = (float)(total * 0.08);
					out.println(tax);
				%>
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<th>Customer pay:</th>
			<td>
				<%
					out.println(total + tax);
				%>
			</td>
		</tr>
	</table>
	</p>
	<%
		}
	%>
	<%
		}
	%>
</body>
</html>
