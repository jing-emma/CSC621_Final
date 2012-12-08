<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html "http://www.w3.org/1999/xhtml" lang="en_US" xml:lang="en_US">
<head>
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/slide-format.css">
	<link href='http://fonts.googleapis.com/css?family=Averia+Libre:400,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Iceberg' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/register.css">
	<script type="text/javascript" src="javascript/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="javascript/slideshow2.js"></script>
	<script type="text/javascript" src="javascript/header.js"></script>
	<script type="text/javascript" src="javascript/checkLogin.js"></script>
	<title>CRASH! Garage</title>
</head>
<body onLoad="init()">
<div class="display">
<%@include file="header.jsp"%>
<br>
<div class="index-div" onmouseout="popoff_login();" id="index-div">
<%@include file="slide.jsp"%>
<!--%@include file="slideshow.jsp"%>-->
</div>
</div>
</body>
</html>