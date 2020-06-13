package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.entity.User;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class UserService {

	@Resource
	private UserDao userDao;

	//通过用户名和密码获取员工信息
	public User getUser(String username, String password) {
		return userDao.getUser(username, password);
	}
	
	//获取总数
	public long getUserTotal(){
		return userDao.getUserTotal();
	}
	
	//通过用户名获取用户信息
	public User getUser(String username) {
		return userDao.getUser(username);
	}
	
	//获取所有用户信息
	public List<User> getUserList(int page, int size) {
		return userDao.getUserList(page, size);
	}

	//根据id获取用户信息
	public User getUser(int id) {
		return userDao.getUser(id);
	}

	//更新用户信息
	public boolean update(User user) {
		return userDao.update(user);
	}

	//删除用户信息
	public boolean delete(User user) {
		return userDao.delete(user);
	}

	//添加用户信息
	public boolean add(User user) {
		return userDao.save(user) > 0;
	}
	
}
