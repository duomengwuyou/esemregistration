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
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="cache-control" content="no-cache">
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<%=basePath %>static/css/bootstrap.css" rel="stylesheet">
  	<script type="text/javascript" src="<%=basePath %>static/js/jquery.min.js"></script>
  	<script type="text/javascript" src="<%=basePath %>static/js/demo.js"></script>  
  </head>

<body>
<div class="navbar navbar-fixed-top">


    <span>
	    <form class="well" action="<%=basePath %>searchuser" method="post">
	      <label>查询缴费用户和为缴费用户（输入yes或者no）</label>
		  <input type="text" class="span3" name="name"  placeholder="yes or no">
		  <button type="submit" class="btn">search</button>
		</form>
		
		<form class="well" action="<%=basePath %>searchuser2" method="post">
	      <label>通过属于Email获取用户信息</label>
		  <input type="text" class="span3" name="email" >
		  <button type="submit" class="btn">search</button>
		</form>
	</span>
			
	<span>
		<button class="btn" onclick="window.location.href='<%=basePath %>esemregistration'">注册新用户</button>
	</span>
<br>
<div align="center">
<table class="table table-striped table-condensed">
    <thead>
    <tr>
        <th style="width: 40px">id</th>
        <th style="width: 40px">order id</th>
        <th style="width: 40px">付款方式</th>
        <th style="width: 40px">是否缴费</th>  
        <th style="width: 40px">姓名</th>
        <th style="width: 40px">邮箱</th>
        <th style="width: 40px">注册日</th>
        <th style="width: 40px">总金额</th>
        <th style="width: 40px">操作</th>
    </tr>
    </thead>
    <tbody>   
    <!-- 遍历打印从数据库中拿出的数据 -->
    	<c:forEach items= "${list}" var="item">
 		    <tr>
			<td name="id"><c:out value="${item.id} "></c:out></td>
			<td name="orderid"><c:out value="${item.orderid} "></c:out></td>
			<td name="paymethod"><c:out value="${item.paymethod} "></c:out></td>
			<td name="jiaofeiornot"><c:out value="${item.jiaofeiornot} "></c:out></td>
			<td name="name"><c:out value="${item.title } ${item.firstname } ${item.lastname}"></c:out></td>
			<td name="email"><c:out value="${item.email} "></c:out></td>
			<td name="ddate"><c:out value="${item.ddate} "></c:out></td>
			<td name="totalmoney"><c:out value="${item.totalmoney} "></c:out></td>
			<td><a href="javascript:void(0)" onclick="deleteUser(this)">delete</a>|
        		<a href="javascript:void(0)" onclick="updateUser(this)">update</a>|
        		<a href="javascript:void(0)" onclick="sendemail(this)">sendemail</a></td>
        	 </tr>
		</c:forEach>
   </tbody>
    </table>
    </div>
</div>
</body>
</html>