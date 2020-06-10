package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Type;
import com.service.TypeService;
import com.util.PageUtil;

@Results({
	@Result(name="list",location="/jsps/pages/type-list.jsp"),
	@Result(name="add",location="/jsps/pages/type-add.jsp"),
	@Result(name="update",location="/jsps/pages/type-update.jsp"),
	@Result(name="relist",type="redirect",location="typeList.action?page=${page}"),
})
public class TypeAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private Type type;
	private List<Type> typeList;
	@Resource
	private TypeService typeService;
	
	
	//获取列表
	@Action("typeList")
	public String list(){
		typeList = typeService.getTypeList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), typeService.getTypeTotal(), page, size);
		return "list";
	}
	
	//添加页面
	@Action("typeAddPage")
	public String addPage(){
		return "add";
	}
	//添加
	@Action("typeAdd")
	public String add(){
		typeService.add(type);
		return "relist";
	}
		
	//更新页面
	@Action("typeUpdatePage")
	public String updatePage(){
		type = typeService.getType(type.getId());
		return "update";
	}
	
	//更新
	@Action("typeUpdate")
	public String update(){
		typeService.update(type);
		return "relist";
	}
	
	//删除
	@Action("typeDelete")
	public String delete(){
		typeService.delete(type);
		return "relist";
	}


	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public List<Type> getTypeList() {
		return typeList;
	}
	public void setTypeList(List<Type> typeList) {
		this.typeList = typeList;
	}

}
