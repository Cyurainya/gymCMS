<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
	.panel-default{
		border-color: #ddd;
		margin-top: 20vh;
		height: 40vh;
	}
</style>
<body>
<div class="container">
	<div class="panel panel-default">
		<form action="groupAdd.action" method="post" >

			名称：<input type="text" name="group.name" required="required"/>

			<button type="submit" class="btn btn-default">添加</button><s:actionerror/>

		</form>
	</div>
</div>


	
</body>
</html>
