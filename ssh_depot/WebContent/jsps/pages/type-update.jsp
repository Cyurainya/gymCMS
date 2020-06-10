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

	<form action="typeUpdate.action" method="post" >
		<input type="hidden" name="page" value="${param.page}"/>
		<input type="hidden" name="type.id" value="${type.id}"/>
		
		名称：<input type="text" name="type.name" value="${type.name}" required="required"/>
		
		<input type="submit" value="修改"/><s:actionerror/>
		
	</form>
	
</body>
</html>
