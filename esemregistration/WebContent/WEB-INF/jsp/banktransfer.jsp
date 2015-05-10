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
	
	<div style="font-size:16px;">
	
		<h3>International Registration</h3>
		<ul>
			<li>Account Name ： Institute of Software Chinese Academy of Sciences</li>
			<li>Account No.： 0200004509088122880</li>
			<li>Name of Bank ： Industrial and Commercial Bank of China, Beijing Municipal Branch, Haidian West District Subbranch</li>
			<li>Address of Bank：No.65,West Road, North 4th Ring Road, Haidian District, Beijing, China</li>
			<li>Note: ESEM + Registration ID + Your Affiliation + Your Name </li>
		</ul>

             

		<h3>Chinese Registration (from the Mainland of China)</h3>
		<ul>
			<li>单    位：中国科学院软件研究所    </li>
			<li>开户银行：工商银行北京市分行海淀西区支行  </li>
			<li>地    址：北京市海淀区北四环西路65号  </li>
			<li>帐    号：0200004509088122880 </li>
			<li>请汇款时备注： ESEM + 注册号 + 单位 + 姓名 </li>
		</ul>



<p>
*The Registration ID should be clearly legible otherwise the payment cannot be identified. </p>

<p>
*All payments made by bank transfer have to be net of all bank charges.  </p>

<p>
*It may need 5 workdays to confirm the payment. You will receive an e-mail message after the transaction was successful.  </p>
		
	
	</div>
	
	


</form>


</body>
</html>