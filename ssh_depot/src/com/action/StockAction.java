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
import com.entity.Stock;
import com.service.GoodsService;
import com.service.StockService;
import com.util.ExcelUtil;
import com.util.PageUtil;

@Results({
	@Result(name="list",location="/jsps/pages/stock-list.jsp"),
	@Result(name="add",location="/jsps/pages/stock-add.jsp"),
	@Result(name="update",location="/jsps/pages/stock-update.jsp"),
	@Result(name="relist",type="redirect",location="stockList.action?page=${page}"),
})
public class StockAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	
	private Stock stock;
	private List<Stock> stockList;
	private List<Goods> goodsList;
	@Resource
	private StockService stockService;
	@Resource
	private GoodsService goodsService;
	private Goods goods;
	
	
	//获取列表
	@Action("stockList")
	public String list(){
		stockList = stockService.getStockList(page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), stockService.getStockTotal(), page, size);
		return "list";
	}
	
	//通过名称查询
	@Action("stockSearch")
	public String search(){
		stockList = stockService.getStockList(goods, page, size);
		pageTool = PageUtil.getPageTool(getServletRequest(), stockService.getStockTotal(goods), page, size);
		return "list";
	}
	
	//添加页面
	@Action("stockAddPage")
	public String addPage(){
		goodsList = goodsService.getGoodsList();
		return "add";
	}
	
	//添加
	@Action("stockAdd")
	public String add(){
		stockService.add(stock);
		Goods goods = goodsService.getGoods(stock.getGoods().getId());
		goods.setStore(goods.getStore() + stock.getAmount());
		goodsService.update(goods);
		return "relist";
	}
	
	//更新页面
	@Action("stockUpdatePage")
	public String updatePage(){
		goodsList = goodsService.getGoodsList();
		stock = stockService.getStock(stock.getId());
		return "update";
	}
	
	//更新
	@Action("stockUpdate")
	public String update(){
		stockService.update(stock);
		return "relist";
	}
	
	//删除
	@Action("stockDelete")
	public String delete(){
		stockService.delete(stock);
		return "relist";
	}

	
	// 导出报表
	@Action("stockExport")
	public void export() throws IOException {
		List<Object> bookList = new ArrayList<Object>();//拼装生成文件用的信息
		List<Object> sheetList = new ArrayList<Object>();
		sheetList.add("进货信息");	//添加工作表名称 - 位置0
		List<String> list = new ArrayList<String>();
		list.add("编号");list.add("商品");list.add("数量");list.add("经手人");list.add("日期");list.add("备注");
		sheetList.add(list);	//添加工作表表头(和导入模版一致) - 位置1
		List<Stock> stockList = stockService.getStockList();
		for(Stock stock : stockList) {
			List<String> rowList = new ArrayList<String>();
			rowList.add(String.valueOf(stock.getId()));
			rowList.add(stock.getGoods()==null ? "" : stock.getGoods().getName());
			rowList.add(String.valueOf(stock.getAmount()));
			rowList.add(stock.getUser()==null ? "" : stock.getUser().getUsername());
			rowList.add(stock.getCreatedate().toString());
			rowList.add(stock.getRemark());
			sheetList.add(rowList);
		}
		bookList.add(sheetList);
		//设置response属性, 向页面传送文件输出流
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/vnd.ms-excel"); 
		response.addHeader("Content-Disposition","attachment;filename=\"stock.xls\"");
		OutputStream os = response.getOutputStream(); 
		ExcelUtil.writeExcel(os, bookList);//生成xls文件
	}
	

	public Stock getStock() {
		return stock;
	}
	public void setStock(Stock stock) {
		this.stock = stock;
	}
	public List<Stock> getStockList() {
		return stockList;
	}
	public void setStockList(List<Stock> stockList) {
		this.stockList = stockList;
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
