package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

//商品
@Entity//hibernate实体类
public class Goods {
	
	@Id
	@GeneratedValue//自增地段
	private int id;
	private String name;
	private float pricein;
	private float priceout;
	private int store;
	private int sales;
	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE)
	private Type type;
	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE)
	private Factory factory;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPricein() {
		return pricein;
	}
	public void setPricein(float pricein) {
		this.pricein = pricein;
	}
	public float getPriceout() {
		return priceout;
	}
	public void setPriceout(float priceout) {
		this.priceout = priceout;
	}
	public int getStore() {
		return store;
	}
	public void setStore(int store) {
		this.store = store;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Factory getFactory() {
		return factory;
	}
	public void setFactory(Factory factory) {
		this.factory = factory;
	}
	
	
}
