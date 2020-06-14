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

                <s:if test="grop_id == 'String 1'"><td><div align="center" class="STYLE2 STYLE1">系统保护用户</div></td></s:if>
                <s:else>

                    <td >
<%--                        <s:if test="username==#session.user.username">--%>
                            <div align="center">

                                <a href="userUpdatePage.action?user.id=<s:property value="id"/>&page=${page}"><button type="button" class="btn btn-default">修改</button></a>

                            </span>
                            </div>
<%--                        </s:if>--%>

                    </td>
                    <td >
                        <div align="center">


                            <a href="userDelete.action?user.id=<s:property value="id"/>&page=${page}"><button type="button" class="btn btn-default">删除</button></a>

                        </div>
                    </td>
                </s:else>
            </tr>

        </s:iterator>
    </table>
</div>


</body>
</html>
