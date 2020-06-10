package com.action;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Goods;
import com.entity.Sell;
import com.service.GoodsService;
import com.service.SellService;
import com.util.ExcelUtil;
import com.util.PageUtil;

@Results({
	@Result(name="list",location="/jsps/pages/sell-list.jsp"),
	@Result(name="add",location="/jsps/pages/sell-add.jsp"),
	@Result(name="update",location="/jsps/pages/sell-update.jsp"),
	@Result(name="relist",type="redirect",location="sellList.action?page=${page}"),
})
public class SellAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private Sell sell;
	private List<Goods> goodsList;
	private List<Sell> sellList;
	@Resource
	private SellService sellService;
	@Resource
	private GoodsService goodsService;
	private Goods goods;
	
	
	//获取列表
	@Action("sellList")
	public String list(){
		sellList = sellService.getSellList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), sellService.getSellTotal(), page, size);
		return "list";
	}
	
	//通过名称查询
	@Action("sellSearch")
	public String search(){
		sellList = sellService.getSellList(goods, page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), sellService.getSellTotal(goods), page, size);
		return "list";
	}
	
	//添加页面
	@Action("sellAddPage")
	public String addPage(){
		goodsList = goodsService.getGoodsList();
		return "add";
	}
	
	//添加
	@Action("sellAdd")
	public String add(){
		Goods goods = goodsService.getGoods(sell.getGoods().getId());
		if (sell.getAmount() > goods.getStore()) {
			addActionError("库存不足");
			return addPage();
		}else {
			sellService.add(sell);
			goods.setStore(goods.getStore() - sell.getAmount());
			goods.setSales(goods.getSales() + sell.getAmount());
			goodsService.update(goods);
		}
		return "relist";
	}
	
	//更新页面
	@Action("sellUpdatePage")
	public String updatePage(){
		goodsList = goodsService.getGoodsList();
		sell = sellService.getSell(sell.getId());
		return "update";
	}
	
	//更新
	@Action("sellUpdate")
	public String update(){
		sellService.update(sell);
		return "relist";
	}
	
	//删除
	@Action("sellDelete")
	public String delete(){
		sellService.delete(sell);
		return "relist";
	}

	// 导出报表
	@Action("sellExport")
	public void export() throws IOException {
		List<Object> bookList = new ArrayList<Object>();//拼装生成文件用的信息
		List<Object> sheetList = new ArrayList<Object>();
		sheetList.add("出货信息");	//添加工作表名称 - 位置0
		List<String> list = new ArrayList<String>();
		list.add("编号");list.add("商品");list.add("数量");list.add("经手人");list.add("日期");list.add("备注");
		sheetList.add(list);	//添加工作表表头(和导入模版一致) - 位置1
		List<Sell> sellList = sellService.getSellList();
		for(Sell sell : sellList) {
			List<String> rowList = new ArrayList<String>();
			rowList.add(String.valueOf(sell.getId()));
			rowList.add(sell.getGoods()==null ? "" : sell.getGoods().getName());
			rowList.add(String.valueOf(sell.getAmount()));
			rowList.add(sell.getUser()==null ? "" :sell.getUser().getUsername());
			rowList.add(sell.getCreatedate().toString());
			rowList.add(sell.getRemark());
			sheetList.add(rowList);
		}
		bookList.add(sheetList);
		//设置response属性, 向页面传送文件输出流
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/vnd.ms-excel"); 
		response.addHeader("Content-Disposition","attachment;filename=\"sell.xls\"");
		OutputStream os = response.getOutputStream(); 
		ExcelUtil.writeExcel(os, bookList);//生成xls文件
	}
	
	

	public Sell getSell() {
		return sell;
	}
	public void setSell(Sell sell) {
		this.sell = sell;
	}
	public List<Sell> getSellList() {
		return sellList;
	}
	public void setSellList(List<Sell> sellList) {
		this.sellList = sellList;
	}
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}
