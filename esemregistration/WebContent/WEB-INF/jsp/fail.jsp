<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();

	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>ESEM Registration</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-true" style="background-color:#b2ffa0">



<!-- Start Formoid form-->
<link rel="stylesheet" href="<%=basePath %>static/esemregistration_files/formoid1/formoid-flat-green.css" type="text/css" />
<script type="text/javascript" src="<%=basePath %>static/esemregistration_files/formoid1/jquery.min.js"></script>

<div style="text-align: center; margin-top: 0px;">
	<a href="http://eseiw.iscas.ac.cn/eseiw2015/index.html"><img src="<%=basePath %>static/image/esembg.jpg"/></a>
</div>


<form class="formoid-flat-green" action="<%=basePath %>registuser"  style="background-color:#ffffff;font-size:14px;font-family:'Lato', sans-serif;color:#000000;max-width:1200px;min-width:150px" method="post">
    
    <div class="title"><h2>ESEM Registration</h2></div>
	
	<div style="font-size:16px;">Sorry, Failed! Go Back to <a href="http://eseiw.iscas.ac.cn/eseiw2015/">ESEM</a> or <a href="<%=basePath %>esemregistration">Register</a> Again.</div>
	
	


</form>


</body>
</html>