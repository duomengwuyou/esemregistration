package com.sinaapp.zhangboss.emailhelper;

import java.util.Properties;



import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

import com.sinaapp.zhangboss.pojo.User;


public class SendMail{
	public static void sendEmail(User user,String cont){
		
		String smtp = "smtp.163.com";//smtp服务器
		String from = "zhangxinglong1990@163.com";//发件人
		String to = user.getEmail();//收件人
		String copyto = "zhangxinglong1990@163.com";//抄送
		String subject = "ESEIW: Money Confirmed!";//主题
		String content = cont;//正文
		String username = "123@163.com";//发件人邮箱登录名
		String password = "123";//发件人邮箱登录密码
		String filename = null;//附件URL，此处可以自己设置为附件的地址
		
		Mail.sendAndCc(smtp,from,to,copyto,subject,content,username,password,filename);
	}
}
