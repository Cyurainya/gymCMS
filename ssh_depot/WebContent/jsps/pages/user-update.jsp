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

	<form action="userUpdate.action" method="post" >
		<input type="hidden" name="page" value="${param.page}"/>
		<input type="hidden" name="user.id" value="${user.id}"/>
		<input type="hidden" name="user.username" value="${user.username}"/>
		
		用户：${user.username}<br>
		密码：<input type="text" name="user.password" value="${user.password}" required="required"/><br>
		类型：<select name="user.grop.id" style="width:149px;">
					<s:iterator value="groupList">
						<s:if test='id == user.grop.id'>
							<option value="<s:property value='id'/>" selected><s:property value="name"/></option>
						</s:if>
						<s:else>
							<option value="<s:property value='id'/>"><s:property value="name"/></option>
						</s:else>
					</s:iterator>
				</select>
		
		<input type="submit" value="修改"/><s:actionerror/>
		
	</form>
	
</body>
</html>
