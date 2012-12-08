<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>User Information
		<ul>
			<li><a href="user.jsp" target="main">Basic Information</a></li>
			<li><a href="address.jsp" target="main">Address</a></li>
			<li><a href="showMyCar.jsp" target="main">Car</a>
				<ul>
					<li><a href="addCar.jsp" target="main">Add Car</a></li>
					<li><a href="showMyCar.jsp" target="main">List Car</a></li>
				</ul>
			
			</li>
		</ul>
	</li>
	<li>Repair Job
		<ul>
			<li><a href="createRequest.jsp" target="main">New</a></li>
			<li><a href="jobinprocess.jsp" target="main">Processing</a></li>
			<li><a href="jobcompleted.jsp" target="main">History</a></li>
		</ul>
	</li>
</ul>
</body>
</html>