package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Type;

@Repository//注册spring管理bean
public class TypeDao extends BaseDao{

	//获取所有类目信息
	public List<Type> getTypeList() {
		return getSession().createQuery("from Type order by id desc", Type.class).list();
	}
	
	//获取所有类目信息
	public List<Type> getTypeList(int page, int size) {
		return getSession().createQuery("from Type order by id desc", Type.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getTypeTotal(){
		return getSession().createQuery("select count(*) from Type", Long.class).uniqueResult();
	}
	
	//通过id获取类目信息
	public Type getType(int id) {
		return getSession().get(Type.class, id);
	}
	
}
