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

	<form action="sellAdd.action" method="post" onsubmit="return checkForm()">
	
		<input type="hidden" name="sell.user.id" value="${user.id}">
		
		商品：<select name="sell.goods.id" style="width: 149px">
					<s:iterator value="goodsList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
				</select><font color="red">*</font><br>
		数量：<input type="text" name="sell.amount" required="required" placeholder="请输入数字"/><font color="red">*</font><br>
		备注：<input type="text" name="sell.remark"/>
		
		<input type="submit" value="添加"/><s:actionerror/>
	
	</form>
	
</body>
</html>
