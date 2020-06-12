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

	<form action="goodsUpdate.action" method="post" >
		<input type="hidden" name="page" value="${param.page}"/>
		<input type="hidden" name="goods.id" value="${goods.id}">
		厂商：<select name="goods.factory.id" style="width:150px;">
					<s:iterator value="factoryList">
						<s:if test='id == goods.type.id'>
							<option value="<s:property value='id'/>" selected><s:property value="name"/></option>
						</s:if>
						<s:else>
							<option value="<s:property value='id'/>"><s:property value="name"/></option>
						</s:else>
					</s:iterator>
				</select><br>
		类型：<select name="goods.type.id" style="width:150px;">
					<s:iterator value="typeList">
						<s:if test='id == goods.type.id'>
							<option value="<s:property value='id'/>" selected><s:property value="name"/></option>
						</s:if>
						<s:else>
							<option value="<s:property value='id'/>"><s:property value="name"/></option>
						</s:else>
					</s:iterator>
				</select><br>
		商品：<input type="text" name="goods.name" value="${goods.name}" placeholder="请输入商品名称" required="required"/><br>
		进价：<input type="text" name="goods.pricein" value="${goods.pricein}" placeholder="支持整数和小数" required="required"/><br>
		售价：<input type="text" name="goods.priceout" value="${goods.priceout}" placeholder="支持整数和小数" required="required"/>
		
		<input type="submit" value="修改"/>
	</form>
	
</body>
</html>
