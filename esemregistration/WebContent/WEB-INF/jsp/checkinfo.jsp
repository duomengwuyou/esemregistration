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
	<title>ESEM Check</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-true" style="background-color:#b2ffa0">



<!-- Start Formoid form-->
<link rel="stylesheet" href="<%=basePath %>static/esemregistration_files/formoid1/formoid-flat-green.css" type="text/css" />
<script type="text/javascript" src="<%=basePath %>static/esemregistration_files/formoid1/jquery.min.js"></script>

<div style="text-align: center; margin-top: 0px;">
	<a href="http://eseiw.iscas.ac.cn/eseiw2015/index.html"><img src="<%=basePath %>static/image/esembg.jpg"/></a>
</div>

<input style="display: none" value="<%=basePath%>" id="basePath" />

<form id="esemregisform" class="formoid-flat-green" action="<%=basePath %>checkprogress"  style="background-color:#ffffff;font-size:14px;font-family:'Lato', sans-serif;color:#000000;max-width:1200px;min-width:150px" method="post">
    
    <div class="title"><h2>CHECK REGISTRATION INFORMATION</h2></div>

	
	<div class="element-input" title="ORDER ID:"><label class="title">ORDER ID:<span class="required">*</span>
	    </label><input class="medium" type="text" name="orderid" required="required"/>
	</div>


	<div class="submit"><input type="submit" onclick="checkForm(this)" value="Submit"/></div>


</form>


<p class="frmd"><a href="http://formoid.com/v29.php">javascript form</a> Formoid.com 2.9</p><script type="text/javascript" src="<%=basePath %>static/esemregistration_files/formoid1/formoid-flat-green.js"></script>
<!-- Stop Formoid form-->

</body>
</html>
