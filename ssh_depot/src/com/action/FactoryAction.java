package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Factory;
import com.service.FactoryService;
import com.util.PageUtil;

@Results({
	@Result(name="list",location="/jsps/pages/factory-list.jsp"),
	@Result(name="add",location="/jsps/pages/factory-add.jsp"),
	@Result(name="update",location="/jsps/pages/factory-update.jsp"),
	@Result(name="relist",type="redirect",location="factoryList.action?page=${page}"),
})
public class FactoryAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private Factory factory;
	private List<Factory> factoryList;
	@Resource
	private FactoryService factoryService;
	
	
	//获取列表
	@Action("factoryList")
	public String list(){
		factoryList = factoryService.getFactoryList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), factoryService.getFactoryTotal(), page, size);
		return "list";
	}
	
	//添加页面
	@Action("factoryAddPage")
	public String addPage(){
		return "add";
	}
	
	//添加
	@Action("factoryAdd")
	public String add(){
		factoryService.add(factory);
		return "relist";
	}
	
	//更新页面
	@Action("factoryUpdatePage")
	public String updatePage(){
		factory = factoryService.getFactory(factory.getId());
		return "update";
	}
	
	//更新
	@Action("factoryUpdate")
	public String update(){
		factoryService.update(factory);
		return "relist";
	}
	
	//删除
	@Action("factoryDelete")
	public String delete(){
		factoryService.delete(factory);
		return "relist";
	}
	

	public Factory getFactory() {
		return factory;
	}
	public void setFactory(Factory factory) {
		this.factory = factory;
	}
	public List<Factory> getFactoryList() {
		return factoryList;
	}
	public void setFactoryList(List<Factory> factoryList) {
		this.factoryList = factoryList;
	}

}
