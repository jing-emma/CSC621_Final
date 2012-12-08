<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addCar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	<script type="text/javascript" src="javascript/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="javascript/addCar.js"></script>
	

  </head>
  
  <body >
		<table id="" align="center" cellpadding="5px">
			<tr>
				<td><label>VIN <span style="color:red">*</span></label></td>
				<td><input id="vin" type="text" required="required" class="text" name="VIN" size="30" maxlength="30"/></td>
			</tr>
			<tr>
				<td><label>Make<span style="color:red">*</span></label></td>
				<td><input id="make" type="text" required="required" class="text" name="make" size="30" maxlength="30"/></td>
			</tr>
			<tr>
				<td><label>Category<span style="color:red">*</span></label></td>
				<td>  <select id="category" name="category">
                                        <option value="SUV">SUV</option> 
                                        <option value="sedan">Sedan</option>
										<option value="van">VAN</option>
										<option value="pickup">Pickup</option>
                                    </select>
                                    </td>
			</tr>
			
			<tr>
				<td><label >Model <span style="color:red">*</span></label></td>
				<td><input id="model" type="text" placeholder="2004 Lexus RX 330 AWD" required="required" 
					class="text" name="model" size="30" maxlength="30" /></td>
			</tr>
			<tr>
				<td><label >Purchase Year <span style="color:red">*</span></label></td>
				<td><input id="purchasedate" type="text" name="purchasedate" required="required" class="" size="30" maxlength="16"/></td>
			</tr>
			<tr>
				<td><label >Plate<span style="color:red">*</span></label></td>
				<td><input id="plate" type="text" name="plate" required="required" class="" size="30" maxlength="16" /></td>
			</tr>

			<tr>
					<td valign="top"><label >Image<span style="color:red">*</span></label>
					</td>
					<td >
					 <form id="myform" action="server/regCarimg.jsp" method="post" ENCTYPE='multipart/form-data' target="win">
					 <table>
					 	<tr>
					 		<td align="center">
					 		<input type="file" name="file"  />
					 		<input id="filesubmit" type="submit" value="upload"/>
					 		</td>
					 	</tr>

					 </table>
					 </form>
					</td>	
			</tr>
			<tr>
			<td>
			</td>
			<td><input id="submitcar" type="submit"/> 
			</td>
			</tr>
			
	</table>
  </body>
</html>
