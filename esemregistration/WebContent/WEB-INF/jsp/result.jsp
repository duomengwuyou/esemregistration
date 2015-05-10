<%@page import="com.sinaapp.zhangboss.zhifu.OrderInformation"%>
<%@page import="com.sinaapp.zhangboss.pojo.User"%>
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


<form class="formoid-flat-green" action="https://pay.yizhifubj.com/prs/e_user_payment.checkit"  style="background-color:#ffffff;font-size:14px;font-family:'Lato', sans-serif;color:#000000;max-width:1200px;min-width:150px" method="post">
    
    <div class="title"><h2>CHECK RESULT</h2></div>	
	
	<div>
		<%
			User curUser = (User)request.getAttribute("search_user");
			OrderInformation oinfo = (OrderInformation)request.getAttribute("cur_order");
			if(curUser != null){
		%>
				<h3>Registration Summary: （If there are any problem with the data, please contact <span  style="color: red;">eseiw_registration@itechs.iscas.ac.cn</span>）</h3>
				<ul>
					<li><strong>Name:</strong> <%=curUser.getTitle() %>  <%=curUser.getFirstname() %> <%=curUser.getLastname() %></li>
					<li><strong>Sex:</strong>  <%=curUser.getSex() %></li>
					<li><strong>Email:</strong>  <%=curUser.getEmail() %></li>
					<li><strong>Address:</strong>  <%=curUser.getAddress() %></li>
					<li><strong>Order ID:</strong>  <span style="color: red;"><%=curUser.getOrderid() %></span></li>
				</ul>
				
				<hr />
				
				<h3>Payment in progress: </h3>
				<p>You have invoice in total <span style="color: red;">US$<%=curUser.getTotalmoney() %></span>, your payment method is: <span style="color: red;"><%=curUser.getPaymethod() %></span></p>
				
				<%
					String payMethod = curUser.getPaymethod();
					String jiaofeiOrNot = curUser.getJiaofeiornot();
					if(payMethod.startsWith("Credit")){
				%>
					
					<%
						if(jiaofeiOrNot.equals("no")){
					%>
						<h3>You did not payed the money.</h3>
					
						<input type="hidden" name="v_md5info" size="100"  value="<%=oinfo.getV_md5info()%>">
						<input type="hidden" name="v_mid" value="<%=oinfo.getV_mid()%>">
						<input type="hidden" name="v_oid" value="<%=oinfo.getV_oid()%>">
						<input type="hidden" name="v_rcvname" value="<%=oinfo.getV_rcvname()%>">
						<input type="hidden" name="v_rcvaddr" value="<%=oinfo.getV_rcvaddr()%>">
						<input type="hidden" name="v_rcvtel" value="<%=oinfo.getV_rcvtel()%>">
						<input type="hidden" name="v_rcvpost" value="<%=oinfo.getV_rcvpost()%>">
						<input type="hidden" name="v_amount" value="<%=oinfo.getV_amount()%>">
						<input type="hidden" name="v_ymd"  value="<%=oinfo.getV_ymd()%>">
						<input type="hidden" name="v_orderstatus"  value="<%=oinfo.getV_orderstatus()%>">
						<input type="hidden" name="v_ordername"  value="<%=oinfo.getV_ordername()%>">
						<input type="hidden" name="v_moneytype"  value="<%=oinfo.getV_moneytype()%>">
						<input type="hidden" name="v_url" value="<%=oinfo.getV_url()%>">
						<img src="<%=basePath %>static/image/visa.gif" height="20" /> <input type="submit" value="Pay Now!">
					
					
					<%
						}else{
					%>
						<h3>You have payed the money!</h3>
					<%
						}
						
						if(curUser.getNeedinviforvisa() != null && curUser.getNeedinviforvisa().equals("Yes")){
					%>
					<hr />
					<ul>
						<li><strong>Date of Birth:</strong>  <%=curUser.getBirthday() %></li>
						<li><strong>Country of Citizenship:</strong>  <%=curUser.getCounofciti() %></li>
						<li><strong>Passport Number:</strong>  <%=curUser.getPassportnum() %></li>
						<li><strong>City where visa was issued:</strong>  <%=curUser.getCityvisaissue() %></li>
						<li><strong>Is hard copy of the invitation letter required?:</strong>  <%=curUser.getHardornot() %></li>
					</ul>
				<%
						}
					}else{
				%>
					
					<%
						if(jiaofeiOrNot.equals("no")){
					%>
						<h3>You did not payed the money.</h3> See bank <a href="<%=basePath %>banktransfer" target="blank">transfer information.</a>
					
					<%
						}else{
					%>
						<h3>You have payed the money!</h3>
					<%
						}
					%>
					
					
					
				<%
					
					}
			}else{
				
				%>
				<h3>Search Result</h3>
				<p><strong>The user does not exits or some thing wrong happened!</strong> Don't worry! If you have any problem please contact the registration secretariat <span style="color: red;">eseiw_registration@itechs.iscas.ac.cn</span>. </p>
				<%
			}
				%>
			<hr/>
			
			<div>
				<h3>Thank you for registering to the Empirical Software Engineering International Week (ESEIW 2015)!
				
				<span style="color: red;">Your registration will be confirmed after payment has been received</span>. Confirmation e-mail will be sent to the e-mail address you provide. If you have not received it in one week (1-5 workdays may need for bank transfer), please contact the registration secretariat <span style="color: red;">eseiw_registration@itechs.iscas.ac.cn</span>.
				
				</h3>
				
			</div>
	
	
			<div>
				<h3>To track the status of the registration, please visit: <span style="color: red;"><a href="<%=basePath %>checkinfo" target="blank">here</a></span></h3>.
			</div>
	</div>
	
	


</form>


</body>
</html>