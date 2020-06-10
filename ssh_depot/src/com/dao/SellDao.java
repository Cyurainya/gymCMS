package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Sell;

@Repository//注册spring管理bean
public class SellDao extends BaseDao{

	//获取所有出货信息
	public List<Sell> getSellList() {
		return getSession().createQuery("from Sell order by id desc", Sell.class).list();
	}
	
	//获取所有出货信息
	public List<Sell> getSellList(int page, int size) {
		return getSession().createQuery("from Sell order by id desc", Sell.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取所有进货信息
	public List<Sell> getSellList(List<Integer> goodidList, int page, int size) {
		return getSession().createQuery("from Sell where goods.id in (:goodidList) order by id desc", Sell.class)
				.setParameterList("goodidList", goodidList).setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getSellTotal(){
		return getSession().createQuery("select count(*) from Sell", Long.class).uniqueResult();
	}

	//获取总数
	public long getSellTotal(List<Integer> goodidList){
		return getSession().createQuery("select count(*) from Sell where goods.id in (:goodidList)", Long.class)
				.setParameterList("goodidList", goodidList).uniqueResult();
	}

	//根据id获取出货信息
	public Sell getSell(int id) {
		return getSession().get(Sell.class, id);
	}
	
}
