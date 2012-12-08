<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="file.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%
	
    String user = (String)session.getAttribute("username");
 	//String dir = "../images/upload/"+user;
 	String dir = "../webapps/CrashGarage/images/upload/"+user;
    String imgname = FileUploader.upload(request.getInputStream(), request.getContentType(), request.getContentLength(), dir); 
    session.setAttribute("carimgPath", "images/upload/"+user+"/"+imgname);
    out.println("<img alt=car src=../images/upload/"+user+"/"+imgname+">");
%>

