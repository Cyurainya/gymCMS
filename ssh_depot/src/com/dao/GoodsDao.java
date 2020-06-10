package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Goods;

@Repository//注册spring管理bean
public class GoodsDao extends BaseDao{

	//获取所有商品信息
	public List<Goods> getGoodsList() {
		return getSession().createQuery("from Goods order by id desc", Goods.class).list();
	}
	
	//获取所有商品信息
	public List<Goods> getGoodsList(int page, int size) {
		return getSession().createQuery("from Goods order by id desc", Goods.class)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	//获取总数
	public long getGoodsTotal(){
		return getSession().createQuery("select count(*) from Goods", Long.class).uniqueResult();
	}
	
	//通过名称查询
	public List<Goods> getGoodsList(String name){
		return getSession().createQuery("from Goods where name like :name", Goods.class)
				.setParameter("name", "%"+name+"%").list();
	}
	
	//通过id获取商品信息
	public Goods getGoods(int id) {
		return getSession().get(Goods.class, id);
	}

}
