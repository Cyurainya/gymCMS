<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="goodsAdd.action" method="post" >
		厂商：<select name="goods.factory.id" style="width:155px;">
					<s:iterator value="factoryList">
						<option value='<s:property value="id"/>'><s:property value="name"/></option>
					</s:iterator>
				</select><br>
		类型：<select name="goods.type.id" style="width:155px;">
					<s:iterator value="typeList">
						<option value='<s:property value="id"/>'><s:property value="name"/></option>
					</s:iterator>
				</select><br>
		名称：<input type="text" name="goods.name" placeholder="请输入商品名称" required="required"/><br>
		进价：<input type="text" name="goods.pricein" placeholder="支持整数和小数" required="required"/><br>
		售价：<input type="text" name="goods.priceout" placeholder="支持整数和小数" required="required"/>
		
		<input type="submit" value="添加"/>
	</form>
	
</body>
</html>
