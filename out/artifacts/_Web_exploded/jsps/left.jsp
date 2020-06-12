<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
html, body{
	width: 100%;
	height: 100%;
	margin: 0px 0px;
	overflow: hidden;
}
dl,ul,li{list-style:none;}
a{color:#000;}
a:link,a:visited,a:active,a:hover{text-decoration:none;}
.meun_div{width:110px;height:auto;border-top:0;background:#fff;padding-top:10px;font-size:14px;}
.meun_top{width:80px;height:27px;line-height:27px;padding-left:20px;}
.meun_img{float:left;width:7px;height:27px;background:url(images/menu_1.gif) no-repeat;}
.meun_box ul{margin:0;padding:0 5px 0 19px;font-size:12px;}
.meun_box li{width:auto;height:20px;line-height:20px;margin:3px 0;padding-left:2px;}
.none_box {display:block;}
</style>
<script type="text/JavaScript"> 
var $=function(id) {
   return document.getElementById(id);
};

//显示子菜单
function show_menu_box(num){
	if($('box'+num)){   
		if($('box'+num).style.display=='none'){
			$('box'+num).style.display='block';
			$('img'+num).style.background='url(images/menu_2.gif)';
		}else {
			$('box'+num).style.display='none';
			$('img'+num).style.background='url(images/menu_1.gif)';
		}
	}
}

</script>
</head>

<body>
<table width="173" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
  <tr>
    <td width="169" valign="top">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td height="20" background="images/main_11.gif">&nbsp;</td>
		  </tr>
		  <tr>
			<td>
				<div class="meun_div" align="center">
				
					<div class="meun_top">
						<div id="img1" class="meun_img"></div>
						<a onclick="show_menu_box(1)" href="javascript:;">商品管理</a>
					</div>
					<div class="meun_box none_box" id="box1">
						<ul>
							<li><a href="goodsList.action"  target="rightFrame">&middot;商品列表</a></li>
							<li><a href="goodsAddPage.action"  target="rightFrame">&middot;添加商品</a></li>
						</ul>
					</div>
					
					<div class="meun_top">
						<div id="img2" class="meun_img"></div>
						<a onclick="show_menu_box(2)" href="javascript:;">进货管理</a>
					</div>
					<div class="meun_box none_box" id="box2">
						<ul>
							<li><a href="stockList.action"  target="rightFrame">&middot;进货记录</a></li>
							<li><a href="stockAddPage.action"  target="rightFrame">&middot;商品入库</a></li>
						</ul>
					</div>
					
					<div class="meun_top">
						<div id="img3" class="meun_img"></div>
						<a onclick="show_menu_box(3)" href="javascript:;">出货管理</a>
					</div>
					<div class="meun_box none_box" id="box3">
						<ul>
							<li><a href="sellList.action"  target="rightFrame">&middot;出货记录</a></li>
							<li><a href="sellAddPage.action"  target="rightFrame">&middot;商品出库</a></li>
						</ul>
					</div>


				<s:if test="#session.user.grop.id==1">
					<div class="meun_top">
						<div id="img4" class="meun_img"></div>
						<a onclick="show_menu_box(4)" href="javascript:;">用户管理</a>
					</div>
					<div class="meun_box none_box" id="box4">
						<ul>
							<li><a href="userList.action"  target="rightFrame">&middot;用户管理</a></li>
							<li><a href="userAddPage.action"  target="rightFrame">&middot;添加用户</a></li>

						</ul>
					</div>

					<div class="meun_top">
						<div id="img5" class="meun_img"></div>
						<a onclick="show_menu_box(5)" href="javascript:;">基础信息</a>
					</div>
					<div class="meun_box none_box" id="box5">
						<ul>
							<li><a href="factoryList.action" target="rightFrame">&middot;供货厂商</a></li>
							<li><a href="factoryAddPage.action" target="rightFrame">&middot;添加厂商</a></li>
							<li><a href="typeList.action" target="rightFrame">&middot;商品类别</a></li>
							<li><a href="typeAddPage.action" target="rightFrame">&middot;添加类别</a></li>
							<li><a href="groupList.action" target="rightFrame">&middot;用户分组</a></li>
							<li><a href="groupAddPage.action" target="rightFrame">&middot;添加分组</a></li>
						</ul>
					</div>
				</s:if>
					
					
				</div>
			</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>
</body>
</html>
