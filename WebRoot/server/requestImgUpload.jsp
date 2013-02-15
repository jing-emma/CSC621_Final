<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="file.FileUploader"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String username = (String)session.getValue("username");
	String dir = "../webapps/CrashGarage/images/upload/"+username;
	String filename = FileUploader.upload(request.getInputStream(), request.getContentType(), request.getContentLength(),dir); 
	out.print("<img src='../images/upload/"+username+"/"+filename+"' />");
	session.putValue("img",filename);
%>
</body>
</html>