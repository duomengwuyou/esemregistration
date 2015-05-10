package com.sinaapp.zhangboss.zhifu.helper;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.capinfo.crypt.MD5;
import com.sinaapp.zhangboss.pojo.User;
import com.sinaapp.zhangboss.zhifu.OrderInformation;

/**
 * 支付中需要调用的各类函数
 * @author Administrator
 *
 */
public class PayHelperFunction {

	//基于已有用户信息创建订单
	public OrderInformation createOrderByUser(User theU,String v_moneytype,String v_url,String MD5Key) throws IOException{
				
		  OrderInformation newOrder = new OrderInformation();
		  newOrder.setV_mid((int)theU.getId());

		  String ddate1= theU.getDdate();

		  //订单编号，订单编号的格式:yyyymmdd-v_mid-流水号。流水号可以按照自己的订单规则生成，但是要保证每一次提交，订单号是唯一值，否则会出错
		  String v_oid = theU.getOrderid();
		  newOrder.setV_oid(v_oid);
		  
		  int v_mid = (int)theU.getId();
		  String v_rcvname = String.valueOf(v_mid);
		  newOrder.setV_rcvname(v_rcvname);
		  newOrder.setV_rcvaddr(String.valueOf(v_mid));
		  newOrder.setV_rcvpost(String.valueOf(v_mid));
		  newOrder.setV_rcvtel(String.valueOf(v_mid));
		  
		  String v_amount = theU.getTotalmoney() + ".00";
		  newOrder.setV_amount(v_amount);

		  String v_ymd = ddate1;        //订单日期,订单提交的日期，可获取系统时间，格式为：yyyymmdd
		  newOrder.setV_ymd(v_ymd);
		  
		  String v_orderstatus = "1";	//配货状态，0-未配齐，1-已配齐。
		  newOrder.setV_orderstatus(v_orderstatus);
		  
		  String v_ordername = String.valueOf(v_mid); //订货人姓名，建议用商户编号代替
		  newOrder.setV_ordername(v_ordername);
		  		  
		  newOrder.setV_moneytype(v_moneytype);
		  newOrder.setV_url(v_url);
		    

		  MD5 md5 = new MD5("");
		  md5.hmac_MD5(v_moneytype+v_ymd+v_amount+v_rcvname+v_oid+v_mid+v_url,MD5Key) ;
		  byte b[]= md5.getDigest();
		  String digestString = md5.stringify(b) ;
		  
		  newOrder.setV_md5info(digestString);
		  return newOrder;
	}
	
	
	
	
	//创建一个新的订单
	public OrderInformation createNewOrder(int v_mid,String v_amount,String v_moneytype,String v_url,String MD5Key) throws IOException{
			
		  OrderInformation newOrder = new OrderInformation();
		  newOrder.setV_mid(v_mid);

		  String ddate = new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar.getInstance().getTime());
		  String ddate1= new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime());
		  newOrder.setDdate(ddate1);
		  
		  long random = Math.round(Math.random() * 1000000) ; //生成随机数

		  //订单编号，订单编号的格式:yyyymmdd-v_mid-流水号。流水号可以按照自己的订单规则生成，但是要保证每一次提交，订单号是唯一值，否则会出错
		  String v_oid = ddate1+"-"+v_mid+"-"+ddate+"-"+random;
		  newOrder.setV_oid(v_oid);
		  
		  String v_rcvname = String.valueOf(v_mid);
		  newOrder.setV_rcvname(v_rcvname);
		  newOrder.setV_rcvaddr(String.valueOf(v_mid));
		  newOrder.setV_rcvpost(String.valueOf(v_mid));
		  newOrder.setV_rcvtel(String.valueOf(v_mid));
		  
		  v_amount = v_amount + ".00";
		  newOrder.setV_amount(v_amount);

		  String v_ymd = ddate1;        //订单日期,订单提交的日期，可获取系统时间，格式为：yyyymmdd
		  newOrder.setV_ymd(v_ymd);
		  
		  String v_orderstatus = "1";	//配货状态，0-未配齐，1-已配齐。
		  newOrder.setV_orderstatus(v_orderstatus);
		  
		  String v_ordername = String.valueOf(v_mid); //订货人姓名，建议用商户编号代替
		  newOrder.setV_ordername(v_ordername);
		  		  
		  newOrder.setV_moneytype(v_moneytype);
		  newOrder.setV_url(v_url);
		    

		  MD5 md5 = new MD5("");
		  md5.hmac_MD5(v_moneytype+v_ymd+v_amount+v_rcvname+v_oid+v_mid+v_url,MD5Key) ;
		  byte b[]= md5.getDigest();
		  String digestString = md5.stringify(b) ;
		  
		  newOrder.setV_md5info(digestString);
		  return newOrder;
	}
}
