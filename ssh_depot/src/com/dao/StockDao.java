package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Stock;

@Repository//注册spring管理bean
public class StockDao extends BaseDao{

	//获取所有进货信息
	public List<Stock> getStockList() {
		return getSession().createQuery("from Stock order by id desc", Stock.class).list();
	}
	
	//获取所有进货信息
	public List<Stock> getStockList(int page, int size) {
		return getSession().createQuery("from Stock order by id desc", Stock.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取所有进货信息
	public List<Stock> getStockList(List<Integer> goodidList, int page, int size) {
		return getSession().createQuery("from Stock where goods.id in (:goodidList) order by id desc", Stock.class)
				.setParameterList("goodidList", goodidList).setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getStockTotal(){
		return getSession().createQuery("select count(*) from Stock", Long.class).uniqueResult();
	}
	
	//获取总数
	public long getStockTotal(List<Integer> goodidList){
		return getSession().createQuery("select count(*) from Stock where goods.id in (:goodidList)", Long.class)
				.setParameterList("goodidList", goodidList).uniqueResult();
	}

	//根据id获取进货信息
	public Stock getStock(int id) {
		return getSession().get(Stock.class, id);
	}
	
}
