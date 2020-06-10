package com.service;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.StockDao;
import com.entity.Goods;
import com.entity.Stock;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class StockService {

	@Resource
	private StockDao stockDao;
	@Resource
	private GoodsService goodsService;
	
	
	//获取所有进货信息
	public List<Stock> getStockList() {
		return stockDao.getStockList();
	}
	
	//获取所有进货信息
	public List<Stock> getStockList(int page, int size) {
		return stockDao.getStockList(page, size);
	}
	
	//通过商品获取进货信息
	public List<Stock> getStockList(Goods goods, int page, int size) {
		if (Objects.nonNull(goods) && ( goods.getId()>0 || (Objects.nonNull(goods.getName()) && !goods.getName().trim().isEmpty()))) {
			List<Integer> goodidList = goodsService.getGoodidList(goods);
			if(!goodidList.isEmpty()) {
				return stockDao.getStockList(goodidList, page, size);
			}else {
				return null;
			}
		}
		return stockDao.getStockList(page, size);
	}
	
	//获取总数
	public long getStockTotal(){
		return stockDao.getStockTotal();
	}
	
	//获取总数
	public long getStockTotal(Goods goods){
		if (Objects.nonNull(goods) && ( goods.getId()>0 || (Objects.nonNull(goods.getName()) && !goods.getName().trim().isEmpty()))) {
			List<Integer> goodidList = goodsService.getGoodidList(goods);
			if(!goodidList.isEmpty()) {
				return stockDao.getStockTotal(goodidList);
			}else {
				return 0;
			}
		}
		return stockDao.getStockTotal();
	}

	//根据id获取进货信息
	public Stock getStock(int id) {
		return stockDao.getStock(id);
	}

	//更新进货信息
	public boolean update(Stock stock) {
		stock.setCreatedate(new Date());
		return stockDao.update(stock);
	}

	//删除进货信息
	public boolean delete(Stock stock) {
		return stockDao.delete(stock);
	}

	//添加进货信息
	public boolean add(Stock stock) {
		stock.setCreatedate(new Date());
		return stockDao.save(stock) > 0;
	}
	
}
