package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.TypeDao;
import com.entity.Type;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class TypeService {

	@Resource
	private TypeDao typeDao;
	
	//获取所有类目信息
	public List<Type> getTypeList() {
		return typeDao.getTypeList();
	}
	
	//获取所有类目信息
	public List<Type> getTypeList(int page, int size) {
		return typeDao.getTypeList(page, size);
	}
	
	//获取总数
	public long getTypeTotal(){
		return typeDao.getTypeTotal();
	}

	//根据id获取类目信息
	public Type getType(int id) {
		return typeDao.getType(id);
	}

	//更新类目信息
	public boolean update(Type type) {
		return typeDao.update(type);
	}

	//删除类目信息
	public boolean delete(Type type) {
		return typeDao.delete(type);
	}

	//添加类目信息
	public boolean add(Type type) {
		return typeDao.save(type) > 0;
	}
	
}
