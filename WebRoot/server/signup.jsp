<%@page import="java.util.Map"						%>
<%@page import="java.util.List"						%>
<%@page import="db.OracleConnector"					%>
<% 
    String uname = request.getParameter("username");
    String passwd = request.getParameter("password");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    
    OracleConnector connector = new OracleConnector();
   	String query = "select * from users where username = \'" + uname + "\'";
   	
    List<Map<String, String>> result = connector.getRecords(query);
    if(!result.isEmpty()){
    	out.println("Error");
    	out.flush();
       
    } else {
    	 query = "insert into users values('"+uname+"','"+passwd+"','"+fname+"','"+lname+"')";
    	 
       if(connector.insertUpdateRecord(query)){
           session.setAttribute("uname", uname);
           out.println("OK");
           out.flush();
       }
       else
           out.println("Error");
       	   out.flush();
    }
%>

