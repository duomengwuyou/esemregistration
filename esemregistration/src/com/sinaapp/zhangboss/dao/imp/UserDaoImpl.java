package com.sinaapp.zhangboss.dao.imp;

import java.util.List;

import org.springframework.stereotype.Component;

import com.sinaapp.zhangboss.dao.SuperDao;
import com.sinaapp.zhangboss.dao.UserDao;
import com.sinaapp.zhangboss.pojo.User;

@Component("userDao")
public class UserDaoImpl extends SuperDao implements UserDao {

	@Override
	public void deleteById(long id) {
		this.template.delete("User.deleteById", id);
	}

	@Override
	public void inseartUser(User user) {
		this.template.insert("User.saveUser", user);
	}

	@Override
	public void updateUser(User user) {
		this.template.update("User.updateUser", user);
	}

	@Override
	public List<User> findByLimit(int limit) {
		return this.template.selectList("User.findByLimit", limit);
		
	}

	@Override
	public List<User> findByJiaoFeiOrNot(String str){
		return this.template.selectList("User.findByJiaoFeiOrNot", str);
	}

	@Override
	public User findById(long id) {
		return this.template.selectOne("User.findById", id);
	}

	@Override
	public List<User> findByEmail(String email) {		
		return this.template.selectList("User.findByEmail", email);
	}

	@Override
	public List<User> findByDateEmail(User user) {
		return this.template.selectList("User.findByDateEmail", user);
	}

	@Override
	public List<User> findByOrderId(String orderid) {
		return this.template.selectList("User.findByOrderId", orderid);
	}

	@Override
	public void updateUserAftPayed(User user) {
		this.template.update("User.updateUserAftPayed", user);
		
	}
	
}
