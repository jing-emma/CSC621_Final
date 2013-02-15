<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.OracleConnector"%>
<%@page import="json.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
	String username = (String)session.getAttribute("username");
	String rid = request.getParameter("rid");
	
	String json_string = request.getParameter("items");
	OracleConnector connector = new OracleConnector();
	
	List<CostItem> costItemList = JsonUtil.getList4Json(json_string, CostItem.class);
	for(int i = 0 ; i < costItemList.size();i++){
		CostItem  row = costItemList.get(i);
		String query = "INSERT INTO cost_details VALUES('"+row.getItem()+"','"+row.getDescription()+"','"+row.getUnitPrice()+"','"+row.getAmount()+"','"+rid+"')";
		connector.insertUpdateRecord(query);
	}
	
	String query1 = "UPDATE repair_jobs SET status='completed',completetime=sysdate WHERE rid='"+rid+"'";	

	connector.insertUpdateRecord(query1);
	response.sendRedirect("../employee/myJobs.jsp");
%>
