package com.sinaapp.zhangboss.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sinaapp.zhangboss.dao.UserDao;
import com.sinaapp.zhangboss.pojo.User;

@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao;
	
	public UserDao getDao() {
		return dao;
	}
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	@Transactional
	public List<User> findByLimit(int limit){
		return dao.findByLimit(limit);
	}
	@Transactional
	public boolean insertUser(User user){
		dao.inseartUser(user);
		return true;
	}
	@Transactional
	public boolean deleteById(long id){
		dao.deleteById(id);
		return true;
	}
	@Transactional
	public boolean  updateUser(User user){
		dao.updateUser(user);
		return true;
	}
	
	
	@Transactional
	public boolean  updateUserAftPayed(User user){
		dao.updateUserAftPayed(user);
		return true;
	}
	
	@Transactional
	public List<User> findByJiaoFeiOrNot(String str){
		return dao.findByJiaoFeiOrNot(str);
	}
	@Transactional
	public User findById(long id){
		return dao.findById(id);
	}
	
	@Transactional
	public String findByEmail(String str){
		List<User> users = dao.findByEmail(str);
		if(users == null || users.size() == 0){
			return "true";
		}else{
			return "false";
		}
	}
	
	@Transactional
	public List<User> findUser(String str){
		List<User> users = dao.findByEmail(str);
		return users;
	}
	
	@Transactional
	public List<User> findUserByDateEmail(User user){
		List<User> users = dao.findByDateEmail(user);
		return users;
	}
	
	@Transactional
	public List<User> findUserByOrderId(String str){
		List<User> users = dao.findByOrderId(str);
		return users;
	}
	
}
