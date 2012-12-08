<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="json.JsonUtil" %>
<%
	session.putValue("username","guojun.blue@gmail.com");
	String username = (String)session.getValue("username");
		
	String json_string = request.getParameter("new");
	Map json_map = JsonUtil.getMap4Json(json_string);
		
		
	String name = (String)json_map.get("name");
	String category = (String)json_map.get("category");
	String plate = (String)json_map.get("plate");
	String description = (String)json_map.get("description");
	
	name.replace("'","''");
	description = description.replace("'","''");
	
	String sql = "select repair_seq.NEXTVAL from dual";
	OracleConnector con = new OracleConnector();
	
	List<Map<String,String>> results = con.getRecords(sql);
	Map<String,String> result = results.get(0);
	String repair_id = result.get("nextval");
	
	sql = "insert into repair_jobs values("+repair_id+       
											",'new'"+		//status
											",'"+name+"'"+	//name
											",'"+description+"'"+	 //description
											",'"+category+"'"+		//category
											",'','','')";
											
	System.out.println("insert sql " + sql);									
	con.insertUpdateRecord(sql);
	
	sql = "insert into requests values("+repair_id+
										",'"+username+"'"+
										",'"+plate+"'"+
										",'')";
	con.insertUpdateRecord(sql);
	String img_path = (String)session.getValue("img");
	
	if( !img_path.equals("") )
	{
		sql = "select image_seq.NEXTVAL from dual";
		results = con.getRecords(sql);
		result = results.get(0);
		String image_id = result.get("nextval");
		
		img_path = username + "/" + img_path;
		
		sql = "insert into images values("+image_id
										+",'"+img_path+"'"
										+","+repair_id+")";
		con.insertUpdateRecord(sql);
	}
	out.println("OK"); 
	//response.sendRedirect("../createRequest.jsp");
%>