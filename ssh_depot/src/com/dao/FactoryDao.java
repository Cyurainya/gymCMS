package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Factory;

@Repository//注册spring管理bean
public class FactoryDao extends BaseDao{

	//获取所有厂商信息
	public List<Factory> getFactoryList() {
		return getSession().createQuery("from Factory order by id desc", Factory.class).list();
	}
	
	//获取所有厂商信息
	public List<Factory> getFactoryList(int page, int size) {
		return getSession().createQuery("from Factory order by id desc", Factory.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getFactoryTotal(){
		return getSession().createQuery("select count(*) from Factory", Long.class).uniqueResult();
	}

	//根据id获取厂商信息
	public Factory getFactory(int id) {
		return get(Factory.class, id);
	}
	
}
