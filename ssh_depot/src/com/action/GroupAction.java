package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Group;
import com.service.GroupService;
import com.util.PageUtil;

@Results({
	@Result(name="list",location="/jsps/pages/group-list.jsp"),
	@Result(name="add",location="/jsps/pages/group-add.jsp"),
	@Result(name="update",location="/jsps/pages/group-update.jsp"),
	@Result(name="relist",type="redirect",location="groupList.action?page=${page}"),
})
public class GroupAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private Group group;
	private List<Group> groupList;
	@Resource
	private GroupService groupService;
	
	
	//获取列表
	@Action("groupList")
	public String list(){
		groupList = groupService.getGroupList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), groupService.getGroupTotal(), page, size);
		return "list";
	}

	//添加页面
	@Action("groupAddPage")
	public String addPage(){
		return "add";
	}
	
	//添加
	@Action("groupAdd")
	public String add(){
		groupService.add(group);
		return "relist";
	}
	
	//更新页面
	@Action("groupUpdatePage")
	public String updatePage(){
		group = groupService.getGroup(group.getId());
		return "update";
	}
	
	//更新
	@Action("groupUpdate")
	public String update(){
		groupService.update(group);
		return "relist";
	}
	
	//删除
	@Action("groupDelete")
	public String delete(){
		groupService.delete(group);
		return "relist";
	}


	public Group getGroup() {
		return group;
	}
	public void setGroup(Group group) {
		this.group = group;
	}
	public List<Group> getGroupList() {
		return groupList;
	}
	public void setGroupList(List<Group> groupList) {
		this.groupList = groupList;
	}

}
