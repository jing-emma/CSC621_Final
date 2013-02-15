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
<link rel="stylesheet" type="text/css" href="css/main.css"></link>
<link rel="stylesheet" type="text/css" href="css/newRequest.css"></link>
<script type="text/javascript" src="javascript/new_request.js"></script>
</head>
<body onLoad="initAjax()">
<%
	session.putValue("img","");
	String username = (String)session.getValue("username");
	
	
	OracleConnector con = new OracleConnector();

%>
<br/>
<h2 align="center">New Request</h2>
<hr>
<br/>
<table id="newR_table">
	<tr class="odd"><td class="leftColumn">Title:</td><td><input type="text" id="name" style="height: 20px;" /></td></tr>
	<tr><td class="leftColumn">Category:</td><td><select id="category">
												<%
													String queryString = "select * "
																+"from category "
																+"order by name";
													List<Map<String,String>> results = con.getRecords(queryString);
													for(int i=0;i<results.size();i++)
													{
														Map<String,String> target = results.get(i);
														String cid = target.get("cid");
														String name = target.get("name");
														out.print("<option value="+cid+">"+name);
													}
												%>
							 					</select></td></tr>
	<tr class="odd"><td class="leftColumn">Plate:</td><td><select id="plate">
							<%
								queryString = "select platenumber from user_car where username='"+username+"'";
								results = con.getRecords(queryString);
								for(int i=0;i<results.size();i++)
								{
									
									Map<String,String> target = results.get(i);
									String temp = target.get("platenumber");
									out.print("<option value="+temp+">"+temp);
								}
							%>
						 </select></td></tr>
	<tr><td class="leftColumn">Description:</td><td><textarea id="description" style="width:80%;" rows="5" ></textarea></td></tr>
	<tr class="odd">
		<td></td>
		<td>
		<form method="post" action="server/requestImgUpload.jsp" enctype="multipart/form-data" target="win" onsubmit="imgSubmit()">
			<table>
				<tr><td><input type="file" name="name"  /></td><td><input type="submit" value="Upload" /></td></tr>
			</table>
		</form>
		</td>
	</tr>
	<tr><td></td><td><input type="button" value="Submit" onclick="requestAjax()" class="confirm_button"  /><input type="button" value="Cancel" onclick="cancelAdd()" class="cancel_button" /></td></tr>
</table>


</body>
</html>