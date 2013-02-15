<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("username");
session.removeAttribute("role");
session.removeAttribute("name");
session.removeAttribute("img");
session.removeAttribute("carimgPath");


out.print("<script type=text/javascript>window.parent.location.href='../index.jsp'</script>");

%>

