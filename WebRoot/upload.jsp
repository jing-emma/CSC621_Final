<%-- 
    Document   : upload
    Created on : Dec 6, 2012, 2:37:34 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="file.FileUploader"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
        String dir = "../webapps/CrashGarage/web/images/upload";
        FileUploader.upload(request.getInputStream(), request.getContentType(), request.getContentLength(),dir); 
        %>
    </body>
</html>
