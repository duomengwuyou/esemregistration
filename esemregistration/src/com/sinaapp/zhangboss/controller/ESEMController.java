package com.sinaapp.zhangboss.controller;


import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.capinfo.crypt.RSA_MD5;
import com.sinaapp.zhangboss.emailhelper.SendMail;
import com.sinaapp.zhangboss.pojo.User;
import com.sinaapp.zhangboss.service.UserService;
import com.sinaapp.zhangboss.zhifu.OrderInformation;
import com.sinaapp.zhangboss.zhifu.ReceiveInformationOne;
import com.sinaapp.zhangboss.zhifu.helper.PayHelperFunction;


@Controller()
public class ESEMController {

	@Resource(name="userService")
	private UserService service;

	
	@RequestMapping("/es893_9iu8r7e")
	public ModelAndView welcome(){
		ModelAndView mv=new ModelAndView();
		List<User> list=service.findByLimit(1000);
		mv.addObject("list", list);
		mv.setViewName("welcome");
		return mv;
	}
	
	@RequestMapping("/esemregistration")
	public ModelAndView getRegistrationPage(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("esemregistration");
		return mv;
	}
	
	
	@RequestMapping("/banktransfer")
	public ModelAndView banktransfer(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("banktransfer");
		return mv;
	}
	
	@RequestMapping("/handledelete")
	public String handleDelete(@RequestParam("id")long id){
		service.deleteById(id);
		return "redirect:/es893_9iu8r7e";
	}
	
	@RequestMapping("/registuser")
	public ModelAndView handleInseart(@Valid User user) throws IOException{
		ModelAndView mv=new ModelAndView();
		String today = new Date().toString();
		user.setRegisttime(today);
		
		//首先加入该用户  并且获取到其id
		boolean opeResult = service.insertUser(user);
		
		
		List<User> users = service.findUserByDateEmail(user);
		
		if(!opeResult || users == null || users.size() == 0){
			mv.setViewName("fail");
			return mv;
		}
		//然后获取一个新的订单
		user = users.get(0);
		long v_mid = user.getId();
		
		//把订单号赋予用户，更新用户信息
		
		PayHelperFunction payHelper = new PayHelperFunction();
		OrderInformation newOrder = payHelper.createNewOrder((int)v_mid,user.getTotalmoney(),"1",null,"test");
		user.setOrderid(newOrder.getV_oid());
		user.setDdate(newOrder.getDdate());
		opeResult = service.updateUser(user);
		
		if(opeResult){
			mv.addObject("cur_user", user);
			mv.addObject("cur_order", newOrder);
			mv.setViewName("success");
		}else{
			mv.setViewName("fail");
		}
		return mv;
		
	}
	
	@RequestMapping("/searchuser")
	public ModelAndView search(String name){
		List<User> list=service.findByJiaoFeiOrNot(name);
		ModelAndView mv=new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("welcome");
		return mv;
	}
	
	
	@RequestMapping("/sendemail")
	public ModelAndView sendemail(@RequestParam("orderid")String orderid){
		List<User> users = service.findUserByOrderId(orderid);
		ModelAndView mv=new ModelAndView();

		if(users == null || users.size() == 0){
			mv.addObject("search_user", null);
			mv.setViewName("fail");
		}else{
			User user = users.get(0);
			String content = user.getTitle()+" "+user.getLastname()+"\n"+"We have received your Money! Below are your registration information: \n"+""
					+ "Email: "+user.getEmail()+"\n"
					+ "OrderID: "+user.getOrderid()+"\n"
					+ "Pay Method: "+user.getPaymethod()+"\n"
					+ "Money: "+user.getTotalmoney()+"\n"
					+ "If you have any problem, please contact us.\n Best regards, \n ESEM";//正文
			SendMail.sendEmail(user,content);
			mv.addObject("emailcont", content);
			mv.setViewName("sendemailresult");
		}
		
		return mv;
	}
	
	
	@RequestMapping("/searchuser2")
	public ModelAndView search2(String email){
		List<User> list=service.findUser(email);
		ModelAndView mv=new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("welcome");
		return mv;
	}
	
	
	@RequestMapping("/searchbyemail")
	@ResponseBody
	public String searchbyemail(String email){
		String existuser =service.findByEmail(email);
		return existuser;
	}
	
	
	@RequestMapping("/checkinfo")
	public ModelAndView checkinfo(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("checkinfo");
		return mv;
	}
	
	@RequestMapping("/checkprogress")
	public ModelAndView searchuser(String orderid) throws IOException{
		List<User> users = service.findUserByOrderId(orderid);
		ModelAndView mv=new ModelAndView();

		if(users == null || users.size() == 0){
			mv.addObject("search_user", null);
		}else{
			User theU = users.get(0);
			mv.addObject("search_user", theU);
			
			PayHelperFunction payHelper = new PayHelperFunction();
			OrderInformation newOrder = payHelper.createOrderByUser(theU,"1",null,"test");
			mv.addObject("cur_order", newOrder);
		}
		mv.setViewName("result");
		return mv;
	}
	
	@RequestMapping("/updatepage")
	public String updatePage(){
		return "updatepage";
	}
	
	@RequestMapping("/handleupdate")
	public String handleUpdate(@Valid User user){
		service.updateUser(user);
		return "redirect:/es893_9iu8r7e";			
	}
	
	
	//支付后页面返回结果
	@RequestMapping("/payrecall")
	public ModelAndView payrecall(@Valid ReceiveInformationOne item) throws IOException{
		ModelAndView mv=new ModelAndView();
		
		//首先通过v_oid来获取用户信息
		String v_url = item.getV_url(); //返回地址
		String v_oid = item.getV_oid(); //订单编号
		String v_pmode = item.getV_pmode(); //支付方式
		String v_pstatus = item.getV_pstatus(); //支付状态
		String v_pstring = item.getV_pstring(); //支付结果信息
		String v_amount = item.getV_amount(); //实际付款金额
		String v_moneytype = item.getV_moneytype(); //支付币种
		String v_sign = item.getV_sign(); //获取数字签名
		
		//根据订单号获取用户信息
		List<User> usersOne = service.findUserByOrderId(v_oid);
		if(usersOne == null || usersOne.size() == 0){
			mv.addObject("search_user", null);
			mv.setViewName("result");
			return mv;
		}
		
		//更新用户信息
		User theUser = usersOne.get(0);
		theUser.setOrderid(v_oid);
		theUser.setV_pmode(v_pmode);
		theUser.setV_pstatus(v_pstatus);
		theUser.setV_amount(v_amount);
		theUser.setV_moneytype(v_moneytype);
		theUser.setV_pstring(v_pstring);
		boolean updateRes = service.updateUserAftPayed(theUser);
		
		//验证返回信息
		RSA_MD5 myRSA=new RSA_MD5();
		String source=v_oid + v_pstatus + v_amount + v_moneytype;
		int verifyStatus=myRSA.PublicVerifyMD5("C:/Public1024.key",v_sign,source);
		
		if(updateRes == false || verifyStatus != 0){
			mv.addObject("search_user", null);
			mv.setViewName("result");
			return mv;
		}
		
		mv.addObject("search_user", theUser);
		mv.setViewName("result");
		return mv;
		
	}
	
	
	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}
}
