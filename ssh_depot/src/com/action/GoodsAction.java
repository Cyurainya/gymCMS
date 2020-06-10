package com.action;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Factory;
import com.entity.Goods;
import com.entity.Type;
import com.service.FactoryService;
import com.service.GoodsService;
import com.service.TypeService;
import com.util.PageUtil;

@Results({
	@Result(name="list",location="/jsps/pages/goods-list.jsp"),
	@Result(name="add",location="/jsps/pages/goods-add.jsp"),
	@Result(name="update",location="/jsps/pages/goods-update.jsp"),
	@Result(name="relist",type="redirect",location="goodsList.action?page=${page}"),
})
public class GoodsAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	@Resource
	private GoodsService goodsService;
	@Resource
	private FactoryService factoryService;
	@Resource
	private TypeService typeService;
	private List<Goods> goodsList;
	private List<Factory> factoryList;
	private List<Type> typeList;
	private Goods goods;
	
	
	//获取列表
	@Action("goodsList")
	public String list(){
		goodsList = goodsService.getGoodsList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), goodsService.getGoodsTotal(), page, size);
		return "list";
	}
	
	//通过名称查询
	@Action("goodsSearch")
	public String search(){
		if (goods!=null && goods.getId() > 0) {
			goodsList = Arrays.asList(goodsService.getGoodsList(goods.getId()));
		}else if (goods!=null && goods.getName()!=null && !goods.getName().trim().isEmpty()) {
			goodsList = goodsService.getGoodsList(goods.getName());
		}else {
			goodsList = goodsService.getGoodsList(page, size);
		}
		return "list";
	}
	
	
	//添加页面
	@Action("goodsAddPage")
	public String addPage(){
		factoryList = factoryService.getFactoryList();
		typeList = typeService.getTypeList();
		return "add";
	}
	
	//添加
	@Action("goodsAdd")
	public String add(){
		goodsService.add(goods);
		return "relist";
	}
	
	//更新页面
	@Action("goodsUpdatePage")
	public String updatePage(){
		factoryList = factoryService.getFactoryList();
		typeList = typeService.getTypeList();
		goods = goodsService.getGoods(goods.getId());
		return "update";
	}
	
	//更新
	@Action("goodsUpdate")
	public String update(){
		goodsService.update(goods);
		return "relist";
	}
	
	//删除
	@Action("goodsDelete")
	public String delete(){
		goodsService.delete(goods);
		return "relist";
	}
	

	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}
	public List<Type> getTypeList() {
		return typeList;
	}
	public void setTypeList(List<Type> typeList) {
		this.typeList = typeList;
	}
	public List<Factory> getFactoryList() {
		return factoryList;
	}
	public void setFactoryList(List<Factory> factoryList) {
		this.factoryList = factoryList;
	}

}
