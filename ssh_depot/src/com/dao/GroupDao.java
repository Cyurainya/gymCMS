package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Group;

@Repository//注册spring管理bean
public class GroupDao extends BaseDao{

	//获取所有用户组信息
	public List<Group> getGroupList() {
		return getSession().createQuery("from Group order by id desc", Group.class).list();
	}
	
	//获取所有用户组信息
	public List<Group> getGroupList(int page, int size) {
		return getSession().createQuery("from Group order by id desc", Group.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getGroupTotal(){
		return getSession().createQuery("select count(*) from Group", Long.class).uniqueResult();
	}
	
	//通过id获取用户组信息
	public Group getGroup(int id) {
		return getSession().get(Group.class, id);
	}
	
}
