package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.GroupDao;
import com.entity.Group;

@Service	// 注解为spring管理bean
@Transactional	//配置此方法加入事务管理
public class GroupService {

	@Resource
	private GroupDao groupDao;
	
	//获取所有分组信息
	public List<Group> getGroupList() {
		return groupDao.getGroupList();
	}
	
	//获取所有分组信息
	public List<Group> getGroupList(int page, int size) {
		return groupDao.getGroupList(page, size);
	}
	
	//获取总数
	public long getGroupTotal(){
		return groupDao.getGroupTotal();
	}

	//根据id获取分组信息
	public Group getGroup(int id) {
		return groupDao.getGroup(id);
	}

	//更新分组信息
	public boolean update(Group group) {
		return groupDao.update(group);
	}

	//删除分组信息
	public boolean delete(Group group) {
		return groupDao.delete(group);
	}

	//添加分组信息
	public boolean add(Group group) {
		return groupDao.save(group) > 0;
	}
	
}
