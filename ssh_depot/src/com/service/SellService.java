package com.service;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.SellDao;
import com.entity.Goods;
import com.entity.Sell;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class SellService {

	@Resource
	private SellDao sellDao;
	@Resource
	private GoodsService goodsService;
	
	
	//获取所有出货信息
	public List<Sell> getSellList() {
		return sellDao.getSellList();
	}
	
	//获取所有出货信息
	public List<Sell> getSellList(int page, int size) {
		return sellDao.getSellList(page, size);
	}
	
	//通过商品获取出货信息
	public List<Sell> getSellList(Goods goods, int page, int size) {
		if (Objects.nonNull(goods) && ( goods.getId()>0 || (Objects.nonNull(goods.getName()) && !goods.getName().trim().isEmpty()))) {
			List<Integer> goodidList = goodsService.getGoodidList(goods);
			if(!goodidList.isEmpty()) {
				return sellDao.getSellList(goodidList, page, size);
			}else {
				return null;
			}
		}
		return sellDao.getSellList(page, size);
	}
	
	//获取总数
	public long getSellTotal(){
		return sellDao.getSellTotal();
	}
	
	//获取总数
	public long getSellTotal(Goods goods){
		if (Objects.nonNull(goods) && ( goods.getId()>0 || (Objects.nonNull(goods.getName()) && !goods.getName().trim().isEmpty()))) {
			List<Integer> goodidList = goodsService.getGoodidList(goods);
			if(!goodidList.isEmpty()) {
				return sellDao.getSellTotal(goodidList);
			}else {
				return 0;
			}
		}
		return sellDao.getSellTotal();
	}

	//根据id获取出货信息
	public Sell getSell(int id) {
		return sellDao.getSell(id);
	}

	//更新出货信息
	public boolean update(Sell sell) {
		sell.setCreatedate(new Date());
		return sellDao.update(sell);
	}

	//删除出货信息
	public boolean delete(Sell sell) {
		return sellDao.delete(sell);
	}

	//添加出货信息
	public boolean add(Sell sell) {
		sell.setCreatedate(new Date());
		return sellDao.save(sell) > 0;
	}
	
}
