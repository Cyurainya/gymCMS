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

	<form action="factoryUpdate.action" method="post" >
		<input type="hidden" name="page" value="${param.page}"/>
		<input type="hidden" name="factory.id" value="${factory.id}"/>
		
		名称：<input type="text" name="factory.name" value="${factory.name}" required="required"/><br>
		地址：<input type="text" name="factory.place" value="${factory.place}" required="required"/><br>
		电话：<input type="text" name="factory.phone" value="${factory.phone}" required="required"/><br>
		传真：<input type="text" name="factory.fax" value="${factory.fax}"/><br>
		卡号：<input type="text" name="factory.card" value="${factory.card}"/>
		
		<input type="submit" value="修改"/><s:actionerror/>
		
	</form>
	
</body>
</html>
