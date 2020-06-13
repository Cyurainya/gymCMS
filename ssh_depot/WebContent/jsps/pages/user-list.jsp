<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css" >
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
/*.STYLE1 {font-size: 12px}*/
/*.STYLE4 {*/
/*	font-size: 12px;*/
/*	color: #1F4A65;*/
/*	font-weight: bold;*/
/*}*/

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

-->
</style>
</head>
<style>
    .panel-default{
        margin: 50px;margin-right: 60px;
    }
    .STYLE2{
        background: grey;
    }
</style>
<body>
<div class="panel panel-default" >
    <!-- Default panel contents -->
    <div class="panel-heading">用户列表</div>

    <!-- Table -->
    <table class="table table table-striped" >
            <tr>
                <th >
                    <div align="center" >用户</div></th>
                <th >
                    <div align="center">电话</div></th>
                <th >
                    <div align="center" >分组</div></th>

                <th>
                    <div align="center">修改</div></th>
                <th >
                    <div align="center">删除</div></th>
            </tr>
        <!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->
        <s:iterator value="userList">

            <tr >
                <td >
                    <div align="center"><s:property value="username"/></div></td>
                <td >
                    <div align="center"><s:property value="phone"/></div></td>
                <td >
                    <div align="center"><s:property value="grop.name"/></div></td>

                <s:if test="id==1"><td><div align="center" class="STYLE2 STYLE1">系统保护用户</div></td></s:if>
                <s:else>

                    <td >
<%--                        <s:if test="username==#session.user.username">--%>
                            <div align="center">

                                <span> [</span>
                                <a href="userUpdatePage.action?user.id=<s:property value="id"/>&page=${page}">修改</a>
                                <span class="STYLE1">]
                            </span>
                            </div>
<%--                        </s:if>--%>

                    </td>
                    <td >
                        <div align="center">

                        <span>[</span>
                            <a href="userDelete.action?user.id=<s:property value="id"/>&page=${page}">删除</a>
                            <span class="STYLE1">]</span>
                        </div>
                    </td>
                </s:else>
            </tr>

        </s:iterator>
    </table>
</div>
<%--<table width="90%" border="0" align="left" cellpadding="0" cellspacing="0">--%>
<%--  <tr>--%>
<%--    <td height="30">--%>
<%--	  <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--		<tr>--%>
<%--		  <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>--%>
<%--		  <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> --%>
<%--			<span class="STYLE4">用户列表</span></td>--%>
<%--		  <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>--%>
<%--		</tr>--%>
<%--	  </table>--%>
<%--	</td>--%>
<%--  </tr>--%>
<%--  <tr>--%>
<%--    <td>--%>
<%--	  <table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--        <tr>--%>
<%--          <td width="9" background="images/tab_12.gif">&nbsp;</td>--%>
<%--          <td bgcolor="e5f1d6">--%>
<%--			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CECECE">--%>
<%--				<tr>--%>
<%--					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">--%>
<%--						<div align="center" class="STYLE2 STYLE1">用户</div></td>--%>
<%--					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">--%>
<%--						<div align="center" class="STYLE2 STYLE1">密码</div></td>--%>
<%--					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">--%>
<%--						<div align="center" class="STYLE2 STYLE1">分组</div></td>--%>
<%--						--%>
<%--					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">--%>
<%--						<div align="center" class="STYLE2">修改</div></td>--%>
<%--					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">--%>
<%--						<div align="center" class="STYLE2">删除</div></td>--%>
<%--				</tr>--%>
<%--				--%>
<%--				<!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->--%>
<%--				<s:iterator value="userList">--%>
<%--	--%>
<%--					<tr>--%>
<%--						<td height="20" bgcolor="#FFFFFF">--%>
<%--							<div align="center" class="STYLE2 STYLE1"><s:property value="username"/></div></td>--%>
<%--						<td height="20" bgcolor="#FFFFFF">--%>
<%--							<div align="center" class="STYLE2 STYLE1"><s:property value="password"/></div></td>--%>
<%--						<td height="20" bgcolor="#FFFFFF">--%>
<%--							<div align="center" class="STYLE2 STYLE1"><s:property value="grop.name"/></div></td>--%>
<%--							--%>
<%--						<s:if test="id==1"><td><div align="center" class="STYLE2 STYLE1">系统保护用户</div></td></s:if>--%>
<%--						<s:else>--%>
<%--							<td height="20" bgcolor="#FFFFFF"><div align="center">--%>
<%--								<img src="images/037.gif" width="9" height="9" />--%>
<%--								<span class="STYLE1"> [</span><a href="userUpdatePage.action?user.id=<s:property value="id"/>&page=${page}">修改</a><span class="STYLE1">]</span></div></td>--%>
<%--							<td height="20" bgcolor="#FFFFFF"><div align="center">--%>
<%--								<img src="images/010.gif" width="9" height="9" />--%>
<%--								<span class="STYLE1">[</span><a href="userDelete.action?user.id=<s:property value="id"/>&page=${page}">删除</a><span class="STYLE1">]</span></div></td>--%>
<%--						</s:else>--%>
<%--					</tr>--%>
<%--					--%>
<%--				</s:iterator>--%>
<%--				--%>
<%--			</table>--%>
<%--		  </td>--%>
<%--		  <td width="9" background="images/tab_16.gif">&nbsp;</td>--%>
<%--		</tr>--%>
<%--	  </table>--%>
<%--	</td>--%>
<%--  </tr>--%>
<%--  <tr>--%>
<%--    <td height="29">--%>
<%--		<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--		  <tr>--%>
<%--			<td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>--%>
<%--			<td background="images/tab_21.gif">--%>
<%--				<a href="userAddPage.action">添加用户</a>${pageTool}--%>
<%--			</td>--%>
<%--			<td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>--%>
<%--		  </tr>--%>
<%--		</table>--%>
<%--	</td>--%>
<%--  </tr>--%>
<%--</table>--%>

</body>
</html>
