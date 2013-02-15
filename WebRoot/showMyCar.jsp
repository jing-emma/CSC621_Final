<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	OracleConnector con = new OracleConnector();
	String user = (String)session.getAttribute("username");

	String query ="SELECT platenumber,make,model,image,vin,cartype, to_char(year, 'YYYY') year FROM users natural join cars natural join user_car where username='"+user+"'";
	
	List<Map<String,String>> result  = con.getRecords(query);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>List My Cars</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/showcar.css">
	

  </head>
  
  <body class="content">
  <br/>
  <h1 align="center">All your cars</h1>
  <br/>
  <hr>
  <br/>
  <div class="showcar-outside">
  <%
  	if(result.size() == 0){
   %>
   <h2>You don't have car registered. Please add one!</h2>
   <%
   }else{
	    for(int i =0 ; i < result.size(); i++){
	    %>
	    <div class="showcar-div">
	    <table class="showcar-table">
	    	<tr>
	    		<td colspan="2"><img src=<%= result.get(i).get("image") %> alt="mycar" width="300" height="189"/></td>
	    	</tr>
	    	<tr  bgcolor="#E9E9E9">
	    		<td >Make</td>
	    		<td><%= result.get(i).get("make") %></td>
	    	</tr>
	    	<tr>
	    		<td>Model</td>
		    	<td><%= result.get(i).get("model") %></td>
		    </tr>
		    <tr  bgcolor="#E9E9E9">
	    		<td>Type</td>
		    	<td><%= result.get(i).get("cartype") %></td>
		    </tr>
		    
	    	<tr>
				<td>Plate</td>
		    	<td><%= result.get(i).get("platenumber") %></td>
	    	</tr>
	    	<tr  bgcolor="#E9E9E9">
				<td>VIN</td>
		    	<td><%= result.get(i).get("vin") %></td>
	    	</tr>
	    	<tr>
				<td>Year</td>
				<% String year = result.get(i).get("year");
				 	
					
				%>
		    	<td><%= year %></td>
	    	</tr>
	    
	    </table>
	    </div>
	    <%
	   	}
    }
    %>
    </div>
  </body>
</html>
