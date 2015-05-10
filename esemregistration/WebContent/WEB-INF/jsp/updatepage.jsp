<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();

	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>updatePage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<%=basePath %>static/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="navbar navbar-fixed-top">
   
	<form class="well" action="<%=basePath %>handleupdate" method="post">
	  <div><h2>更新用户信息</h2></div>
	  <label>ID：</label><input type="text" class="span3" name="id" value='<%=request.getParameter("id")%>'  readonly="readonly"><br>
	  <label>Order ID：</label><input type="text" class="span3" name="orderid" value='<%=request.getParameter("orderid")%>'  readonly="readonly"><br>
	  <label>付款方式：</label><input type="text" class="span3" name="paymethod" value='<%=request.getParameter("paymethod")%>'  readonly="readonly"><br>
	  <label>付款金额：</label><input type="text" class="span3" name="totalmoney" value='<%=request.getParameter("totalmoney")%>'  readonly="readonly"><br>
	  <label>注册日期：</label><input type="text" class="span3" name="ddate" value='<%=request.getParameter("ddate")%>'  readonly="readonly"><br>
	  <br/>
	  
	  <%
	  	String jiaofeiornot = request.getParameter("jiaofeiornot");
	  	if(jiaofeiornot.contains("no")){
	  %>
	  
	   <label>是否缴费</label>
	  yes<input type="radio" name="jiaofeiornot" value="yes">
	  no<input type="radio" name="jiaofeiornot" value="no"  checked=true><br>
	  <br/>
	  
	  <%}else{
	  %>
	  	   <label>是否缴费</label>
	  yes<input type="radio" name="jiaofeiornot" value="yes" checked=true>
	  no<input type="radio" name="jiaofeiornot" value="no"  ><br>
	  <br/>
	  	
	  <%
	  }
	  %>

	  <label>Email：</label><input type="text" class="span3" name="email" value='<%=request.getParameter("email")%>' placeholder='<%=request.getParameter("email")%>'><br>
	  
	  <br/>
	  	 <label>备注信息：</label><input type="text" class="span3" name="beizhu" value='<%=request.getParameter("beizhu")%>' placeholder='<%=request.getParameter("beizhu")%>'><br>
	  <br/>
	  
	  <button type="submit" class="btn">Update</button>
	  
	 
	</form>

 </div>
</body>
</html>