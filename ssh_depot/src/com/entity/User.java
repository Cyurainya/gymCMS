package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity //hibernate实体类
public class User {

	@Id
	@GeneratedValue//自增地段
	private int id;
	private String username;
	private String password;
	private String phone;
	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE) // 外键找不到时忽略, 默认抛出异常

	private Group grop;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Group getGrop() {
		return grop;
	}
	public void setGrop(Group grop) {
		this.grop = grop;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
