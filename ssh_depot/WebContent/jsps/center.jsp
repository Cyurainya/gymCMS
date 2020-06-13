<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style type="text/css">
html, body, iframe{
	width: 100%;
	height: 100vh;
	margin: 0px 0px;
	overflow: hidden;
}
.navPoint {
	COLOR: white;
	CURSOR: hand;
	FONT-FAMILY: Webdings;
	FONT-SIZE: 9pt
}

</style>
</head>

<body>
<div class="row" style="height: 100vh">
	<div class="col-md-2" style="padding: 0">
		<iframe src="jsps/left.jsp" name="leftFrame" id="frame_left"  width="180" frameborder="0" scrolling="no">
		浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
		</iframe>
	</div>
	<div class="col-md-10" style="background: rgb(229,229,229);padding: 0"><iframe src="jsps/right.jsp" name="rightFrame" id="frame_right" width="100%" frameborder="0">
		浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></div>
</div>
<%--	<table width="100%" height="100%" border="0" cellpadding="0"--%>
<%--		cellspacing="0" style="table-layout: fixed;">--%>
<%--		<tr>--%>

<%--			<td width="173" id="frmTitle" noWrap align="center" valign="top" height="100%">--%>
<%--				<iframe src="jsps/left.jsp" name="leftFrame" id="frame_left"  width="180" frameborder="0" scrolling="no">--%>
<%--					浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>--%>
<%--			</td>--%>

<%--			<td align="center" valign="top">--%>
<%--				<iframe src="jsps/right.jsp" name="rightFrame" id="frame_right" width="100%" frameborder="0">--%>
<%--					浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>--%>
<%--			</td>--%>
<%--			<td width="4" align="center" valign="top" >--%>
<%--			</td>--%>
<%--		</tr>--%>
<%--	</table>--%>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script language="javascript">
// ifram高度100%
function iframeHeight() {
	 document.getElementById('frame_left').height="100%";
	 document.getElementById('frame_right').height="100%";
}
</script>
</html>