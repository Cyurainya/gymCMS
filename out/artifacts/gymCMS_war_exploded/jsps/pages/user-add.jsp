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

	<form action="userAdd.action" method="post" >

		用户：<input type="text" name="user.username" required="required"/><br>
		密码：<input type="text" name="user.password" required="required"/><br>
		类型：<select name="user.grop.id" style="width:149px;">
					<s:iterator value="groupList">
						<option value='<s:property value="id"/>'><s:property value="name"/></option>
					</s:iterator>
				</select>
		
		<input type="submit" value="添加"/><s:actionerror/>
		
	</form>
	
</body>
</html>
