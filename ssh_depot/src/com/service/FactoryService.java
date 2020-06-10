package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.FactoryDao;
import com.entity.Factory;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class FactoryService {

	@Resource
	private FactoryDao factoryDao;
	
	//获取所有厂商信息
	public List<Factory> getFactoryList() {
		return factoryDao.getFactoryList();
	}
	
	//获取所有厂商信息
	public List<Factory> getFactoryList(int page, int size) {
		return factoryDao.getFactoryList(page, size);
	}
	
	//获取总数
	public long getFactoryTotal(){
		return factoryDao.getFactoryTotal();
	}

	//根据id获取厂商信息
	public Factory getFactory(int id) {
		return factoryDao.getFactory(id);
	}

	//更新厂商信息
	public boolean update(Factory factory) {
		return factoryDao.update(factory);
	}

	//删除厂商信息
	public boolean delete(Factory factory) {
		return factoryDao.delete(factory);
	}

	//添加厂商信息
	public boolean add(Factory factory) {
		return factoryDao.save(factory) > 0;
	}
	
}
