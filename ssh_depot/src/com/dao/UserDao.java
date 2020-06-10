package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.User;

@Repository//注册spring管理bean
public class UserDao extends BaseDao{

	//根据用户名和密码查找用户
	public User getUser(String username, String password) {
		return getSession().createQuery("from User where username=:username and password=:password", User.class)
				.setParameter("username", username).setParameter("password", password).uniqueResult();
	}
	
	//根据用户名查找用户
	public User getUser(String username) {
		return getSession().createQuery("from User where username=:username", User.class)
				.setParameter("username", username).uniqueResult();
	}

	//获取所有用户信息
	public List<User> getUserList(int page, int size) {
		return getSession().createQuery("from User order by id desc", User.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getUserTotal(){
		return getSession().createQuery("select count(*) from User", Long.class).uniqueResult();
	}

	//根据id获取用户信息
	public User getUser(int id) {
		return getSession().get(User.class, id);
	}
	
}
