package com.sinaapp.zhangboss.dao;

import java.util.List;

import com.sinaapp.zhangboss.pojo.User;


public interface UserDao {
	public void deleteById(long id);
	public void inseartUser(User user);
	public void updateUser(User user);
	public List<User> findByLimit(int limit);
	public List<User> findByJiaoFeiOrNot(String str);
	
	public List<User> findByEmail(String email);
	//通过日期和邮箱获取用户信息
	public List<User> findByDateEmail(User user);
	public User findById(long id);
	//通过订单号获取用户信息
	public List<User> findByOrderId(String orderid);
	
	public void updateUserAftPayed(User user);
	
}
