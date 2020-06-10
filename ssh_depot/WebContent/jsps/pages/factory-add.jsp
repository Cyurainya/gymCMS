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

	<form action="factoryAdd.action" method="post" >

		名称：<input type="text" name="factory.name" required="required"/><br>
		地址：<input type="text" name="factory.place" required="required"/><br>
		电话：<input type="text" name="factory.phone" required="required"/><br>
		传真：<input type="text" name="factory.fax"/><br>
		卡号：<input type="text" name="factory.card"/>
		
		<input type="submit" value="添加"/><s:actionerror/>
		
	</form>
	
</body>
</html>
