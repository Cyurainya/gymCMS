package com.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.GoodsDao;
import com.entity.Goods;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class GoodsService {

	@Resource
	private GoodsDao goodsDao;
	
	
	//获取所有商品信息
	public List<Goods> getGoodsList() {
		return goodsDao.getGoodsList();		
	}
	
	//获取所有商品信息
	public List<Goods> getGoodsList(int page, int size) {
		return goodsDao.getGoodsList(page, size);		
	}
	
	//获取总数
	public long getGoodsTotal(){
		return goodsDao.getGoodsTotal();
	}
	
	//通过名称查询
	public List<Goods> getGoodsList(String name) {
		return goodsDao.getGoodsList(name);		
	}
	
	//通过id查询
	public Goods getGoodsList(int id) {
		return getGoods(id);		
	}
	
	//通过id获取商品信息
	public Goods getGoods(int id) {
		return goodsDao.getGoods(id);		
	}
	
	//更新商品信息
	public boolean update(Goods goods) {
		return goodsDao.update(goods);		
	}

	//删除商品信息
	public boolean delete(Goods goods) {
		return goodsDao.delete(goods);
	}

	//添加商品信息
	public boolean add(Goods goods) {
		return goodsDao.save(goods) > 0;
	}

	//通过商品条件获取商品id集合
	public List<Integer> getGoodidList(Goods goods) {
		List<Integer> goodidList = new ArrayList<>();
		List<Goods> goodsList = null;
		if (goods!=null && goods.getId() > 0) {
			goodsList = Arrays.asList(this.getGoodsList(goods.getId()));
		}else if (goods!=null && goods.getName()!=null && !goods.getName().trim().isEmpty()) {
			goodsList = this.getGoodsList(goods.getName());
		}
		if (goodsList!=null && !goodsList.isEmpty()) {
			for(Goods g : goodsList) {
				goodidList.add(g.getId());
			}
		}
		return goodidList;
	}
	
}
