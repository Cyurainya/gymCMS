package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Group;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.service.GroupService;
import com.service.UserService;
import com.util.PageUtil;

@Results({
	@Result(name="login",location="/login.jsp"),
	@Result(name="main",location="/jsps/main.jsp"),
	@Result(name="list",location="/jsps/pages/user-list.jsp"),
	@Result(name="add",location="/jsps/pages/user-add.jsp"),
	@Result(name="update",location="/jsps/pages/user-update.jsp"),
	@Result(name="relist",type="redirect",location="userList.action?page=${page}"),
})
public class UserAction  extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private User user;
	private List<User> userList;
	private List<Group> groupList;
	@Resource
	private UserService userService;
	@Resource
	private GroupService groupService;
	
	
	//员工登录
	@Action("userLogin")
	public String login(){
		user = userService.getUser(user.getUsername(), user.getPassword());
		if (user == null) {
			addActionError("用户名或密码错误!!");
			return "login";
		} else {
			ActionContext.getContext().getSession().put("user", user);
		}
		return "main";
	}
	
	//获取列表
	@Action("userList")
	public String list(){
		userList = userService.getUserList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), userService.getUserTotal(), page, size);
		return "list";
	}
	
	//添加页面
	@Action("userAddPage")
	public String addPage(){
		groupList = groupService.getGroupList();
		return "add";
	}

	//添加
	@Action("userAdd")
	public String add(){
		if (userService.getUser(user.getUsername()) == null) {
			userService.add(user);
			return "relist";
		} else {
			addActionError("用户名已存在");
			return addPage();
		}
	}

	//注册
	@Action("userRegis")
	public String register(){
		if (userService.getUser(user.getUsername()) == null) {
			userService.add(user);
			return "relist";
		} else {
			addActionError("用户名已存在");
			return addPage();
		}
	}
	//更新页面
	@Action("userUpdatePage")
	public String updatePage(){
		groupList = groupService.getGroupList();
		user = userService.getUser(user.getId());
		return "update";
	}
	
	//更新
	@Action("userUpdate")
	public String update(){
		userService.update(user);
		return "relist";
	}
	
	//删除
	@Action("userDelete")
	public String delete(){
		userService.delete(user);
		return "relist";
	}

	

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public List<Group> getGroupList() {
		return groupList;
	}
	public void setGroupList(List<Group> groupList) {
		this.groupList = groupList;
	}

}
