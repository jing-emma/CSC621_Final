
<%@ page import="db.OracleConnector"%>
<%@ page import="file.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%
//get valid user first 
// 	String plate = car.getPlate();
// 	String make = car.getMake();
// 	String model = car.getModel();
//	image here should be
// 	String VIN = car.getVIN();
// 	String category = car.getCategory();
// 	String purchasedate = car.getPurchasedate();

	String VIN = request.getParameter("vin");
	String make = request.getParameter("make");
	String category = request.getParameter("category");
	String model = request.getParameter("model");
	String purchasedate = request.getParameter("purchasedate");
	String plate = request.getParameter("plate");
 	System.out.println("VIN: "+VIN+"Make: "+make+"category: "+category+"model: "+model+"purchasedate: "+ purchasedate+"plate: "+ plate);
 	
    String image = (String)session.getAttribute("carimgPath");
    
    String user= (String)session.getAttribute("username");
    
	String query = "INSERT INTO cars VALUES('"+plate+"','"+make+"','"+model+"','"+image+"','"+VIN+"','"+category+"',"+"TO_DATE('"+purchasedate+"','YYYY'))";
	String query1 = "INSERT INTO user_car VALUES('"+user+"','"+plate+"')";
	System.out.println(query);
	System.out.println(query1);
	OracleConnector con = new OracleConnector();
	con.insertUpdateRecord(query);
	con.insertUpdateRecord(query1);
	
	response.sendRedirect("../showMyCar.jsp");
 %>

