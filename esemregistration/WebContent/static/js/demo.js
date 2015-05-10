/*
 * 这是处理delete点击事件的函数
 * 获取id的值，然后根据id执行删除操作
 */
function deleteUser(obj){
	var p=$(obj).parents("tr");
	var id=p.find("td[name='id']").text();
	window.location="handledelete?id="+id;
}



function sendemail(obj){
	var p=$(obj).parents("tr");
	var orderid=p.find("td[name='orderid']").text();
	window.location="sendemail?orderid="+orderid;
}

/*
 * 这是处理update点击事件的函数
 * 获取到id的值，然后将id传到更新页面继续操作
 */
function updateUser(obj){
	var p=$(obj).parents("tr");
	var id=p.find("td[name='id']").text();
	var jiaofeiornot=p.find("td[name='jiaofeiornot']").text();
	var email=p.find("td[name='email']").text();
	var beizhu=p.find("td[name='beizhu']").text();
	var orderid=p.find("td[name='orderid']").text();
	var paymethod=p.find("td[name='paymethod']").text();
	var totalmoney=p.find("td[name='totalmoney']").text();
	var ddate=p.find("td[name='ddate']").text();
	
	document.write("<form action='updatepage' method='post' name='formx1' style='display:none'>");
	document.write("<input type=hidden name='id' value='"+id+"'>");
	document.write("<input type=hidden name='jiaofeiornot' value='"+jiaofeiornot+"'>");
	document.write("<input type=hidden name='email' value='"+email+"'>");
	document.write("<input type=hidden name='beizhu' value='"+beizhu+"'>");
	document.write("<input type=hidden name='orderid' value='"+orderid+"'>");
	document.write("<input type=hidden name='paymethod' value='"+paymethod+"'>");
	document.write("<input type=hidden name='totalmoney' value='"+totalmoney+"'>");
	document.write("<input type=hidden name='ddate' value='"+ddate+"'>");
	document.write("</form>");
	document.formx1.submit();
}