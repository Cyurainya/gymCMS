<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Main CSS-->
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!-- Font-icon css-->
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<style type="text/css">
html, body{
	width: 100%;
	height: 100vh;
	background: rgb(42,56,62);
	margin: 0px 0px;
	overflow: hidden;
}
.accordion > .card:first-of-type{
	background: rgb(34,45,50);
}
.btn-link{
	color: white;
}
.accordion > .card{
	background: rgb(34,45,50);
}
.card-header{
	background: rgb(34,45,50);
}
dl,ul,li{list-style:none;}
a{color:#000;}
a:link,a:visited,a:active,a:hover{text-decoration:none;}
.meun_div{width:110px;height:auto;border-top:0;background:#fff;padding-top:10px;font-size:14px;}
.meun_top{width:80px;height:27px;line-height:27px;padding-left:20px;}
.meun_img{float:left;width:7px;height:27px;}
.meun_box ul{margin:0;padding:0 5px 0 19px;font-size:12px;}
.meun_box li{width:auto;height:20px;line-height:20px;margin:3px 0;padding-left:2px;}
.none_box {display:block;}
.nav .nav-pills .nav-stacked{
	flex-direction: column;
}
.nav{
	flex-direction: column;
}
.card-body {
	background: rgb(42,56,62);
}
.btn-link {
	color: white;
	font-weight: bolder;
	font-size: large;
}
ul{
	list-style-type: none;
}
.nav-pills>li>a {
	border-radius: 4px;
	font-size: large;
	color: grey;
}
		.app-sidebar{
			width: 100vw;
		}
		.treeview-menu li{
			/*height: 5vh;*/
			display: flex;
			/*background: #0d1214;*/
		}

.treeview-item{
	padding: 15px;
	width: 100%;
}
		.app-sidebar{
			padding-top: 0px;
		}
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
<div >
<<<<<<< HEAD
	<div class="accordion" id="accordionExample">
		<div class="card">
			<div class="card-header" id="headingOne">
				<h2 class="mb-0">
					<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
<<<<<<< HEAD
						<i class="icon fa fa fa-user"></i> 用户列表
=======
						<i class="icon fa fa fa-user"></i> 人员管理
						<i class="fa fa-angle-right" style="color: white;float: right"></i>
>>>>>>> siran
					</button>
				</h2>
			</div>
=======
	<aside class="app-sidebar" >

		<ul class="app-menu">
			<li><a class="treeview-item" href="backtomain.action"  target="rightFrame"><i class="icon fa fa fa-user-md"></i> 回到首页</a></li>
			<li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">用户管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="userList.action"  target="rightFrame"><i class="icon fa fa fa-user-md"></i> &middot用户列表</a></li>
					<li><a class="treeview-item" href="userAddPage.action"  target="rightFrame"><i class="icon fa fa-user-plus"></i> &middot添加用户</a></li>
					<li><a class="treeview-item" href="groupList.action" target="rightFrame"><i class="icon fa fa-user-o"></i> &middot用户分组</a></li>
					<li><a class="treeview-item" href="groupAddPage.action" target="rightFrame"><i class="icon fa fa fa-user"></i> &middot添加分组</a></li>
					<li><a class="treeview-item" href="userUpdatePage.action?user.id=<s:property value="id"/>&page=${page}"  target="rightFrame">

						<i  class="icon fa fa fa-user"></i>修改個人信息</a></li>
				</ul>
			</li>
			<li class="treeview">
				<a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-hdd-o"></i><span class="app-menu__label">赛事管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
>>>>>>> siran

				</ul>
			</li>

<<<<<<< HEAD
					<ul class="nav nav-pills nav-stacked">
<<<<<<< HEAD
						<li><a href="userList.action"  target="rightFrame"><i class="icon fa fa fa-user-md"></i> &middot用户管理</a></li>
=======
						<li><a href="userList.action"  target="rightFrame"><i class="icon fa fa fa-user-md"></i> &middot用户列表</a></li>
>>>>>>> siran
						<li><a href="userAddPage.action"  target="rightFrame"><i class="icon fa fa-user-plus"></i> &middot添加用户</a></li>
						<li><a href="groupList.action" target="rightFrame"><i class="icon fa fa-user-o"></i> &middot用户分组</a></li>
						<li><a href="groupAddPage.action" target="rightFrame"><i class="icon fa fa fa-user"></i> &middot添加分组</a></li>
					</ul>
				</div>
			</div>
		</div>
=======
>>>>>>> siran

		</ul>
	</aside>

</div>
<<<<<<< HEAD
<%--<div class="app-sidebar__overlay" data-toggle="sidebar">--%>
<%--	<aside class="app-sidebar">--%>
<%--		<div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">--%>
<%--			<div>--%>
<%--				<p class="app-sidebar__user-name">John Doe</p>--%>
<%--				<p class="app-sidebar__user-designation">Frontend Developer</p>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--		<ul class="app-menu">--%>

<%--			<li class="treeview"><a class="app-menu__item" a onclick="show_menu_box(1)" href="javascript:;" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">商品管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>--%>
<%--				<ul class="treeview-menu">--%>
<%--					<li><a class="treeview-item" href="goodsList.action"  target="rightFrame"><i class="icon fa fa-circle-o"></i> 商品列表</a></li>--%>
<%--					<li><a class="treeview-item" href="goodsAddPage.action"  target="rightFrame"><i class="icon fa fa-circle-o"></i> 添加商品</a></li>--%>

<%--				</ul>--%>
<%--			</li>--%>
<%--			<li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Charts</span></a></li>--%>
<%--			<li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Forms</span><i class="treeview-indicator fa fa-angle-right"></i></a>--%>
<%--				<ul class="treeview-menu">--%>
<%--					<li><a class="treeview-item" href="form-components.html"><i class="icon fa fa-circle-o"></i> Form Components</a></li>--%>
<%--					<li><a class="treeview-item" href="form-custom.html"><i class="icon fa fa-circle-o"></i> Custom Components</a></li>--%>
<%--					<li><a class="treeview-item" href="form-samples.html"><i class="icon fa fa-circle-o"></i> Form Samples</a></li>--%>
<%--					<li><a class="treeview-item" href="form-notifications.html"><i class="icon fa fa-circle-o"></i> Form Notifications</a></li>--%>
<%--				</ul>--%>
<%--			</li>--%>
<%--			<li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i class="treeview-indicator fa fa-angle-right"></i></a>--%>
<%--				<ul class="treeview-menu">--%>
<%--					<li><a class="treeview-item" href="table-basic.html"><i class="icon fa fa-circle-o"></i> Basic Tables</a></li>--%>
<%--					<li><a class="treeview-item" href="table-data-table.html"><i class="icon fa fa-circle-o"></i> Data Tables</a></li>--%>
<%--				</ul>--%>
<%--			</li>--%>
<%--			<li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Pages</span><i class="treeview-indicator fa fa-angle-right"></i></a>--%>
<%--				<ul class="treeview-menu">--%>
<%--					<li><a class="treeview-item" href="blank-page.html"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>--%>
<%--					<li><a class="treeview-item" href="page-login.html"><i class="icon fa fa-circle-o"></i> Login Page</a></li>--%>
<%--					<li><a class="treeview-item" href="page-lockscreen.html"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a></li>--%>
<%--					<li><a class="treeview-item" href="page-user.html"><i class="icon fa fa-circle-o"></i> User Page</a></li>--%>
<%--					<li><a class="treeview-item" href="page-invoice.html"><i class="icon fa fa-circle-o"></i> Invoice Page</a></li>--%>
<%--					<li><a class="treeview-item" href="page-calendar.html"><i class="icon fa fa-circle-o"></i> Calendar Page</a></li>--%>
<%--					<li><a class="treeview-item" href="page-mailbox.html"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>--%>
<%--					<li><a class="treeview-item" href="page-error.html"><i class="icon fa fa-circle-o"></i> Error Page</a></li>--%>
<%--				</ul>--%>
<%--			</li>--%>
<%--			<li><a class="app-menu__item" href="docs.html"><i class="app-menu__icon fa fa-file-code-o"></i><span class="app-menu__label">Docs</span></a></li>--%>
<%--		</ul>--%>
<%--	</aside>--%>
<%--</div>--%>
<%--<div>--%>
<%--	<table width="100%" height="100vh" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">--%>
<%--	  <tr>--%>
<%--	    <td width="169" valign="top">--%>
<%--			<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>

<%--			  <tr>--%>
<%--				<td>--%>
<%--					<div class="meun_div" align="center">--%>

<%--						<div class="meun_top">--%>
<%--							<div id="img1" class="meun_img"></div>--%>
<%--							<a onclick="show_menu_box(1)" href="javascript:;">商品管理</a>--%>
<%--						</div>--%>
<%--						<div class="meun_box none_box" id="box1">--%>
<%--							<ul>--%>
<%--								<li><a href="goodsList.action"  target="rightFrame">&middot;商品列表</a></li>--%>
<%--								<li><a href="goodsAddPage.action"  target="rightFrame">&middot;添加商品</a></li>--%>
<%--							</ul>--%>
<%--						</div>--%>

<%--						<div class="meun_top">--%>
<%--							<div id="img2" class="meun_img"></div>--%>
<%--							<a onclick="show_menu_box(2)" href="javascript:;">进货管理</a>--%>
<%--						</div>--%>
<%--						<div class="meun_box none_box" id="box2">--%>
<%--							<ul>--%>
<%--								<li><a href="stockList.action"  target="rightFrame">&middot;进货记录</a></li>--%>
<%--								<li><a href="stockAddPage.action"  target="rightFrame">&middot;商品入库</a></li>--%>
<%--							</ul>--%>
<%--						</div>--%>

<%--						<div class="meun_top">--%>
<%--							<div id="img3" class="meun_img"></div>--%>
<%--							<a onclick="show_menu_box(3)" href="javascript:;">出货管理</a>--%>
<%--						</div>--%>
<%--						<div class="meun_box none_box" id="box3">--%>
<%--							<ul>--%>
<%--								<li><a href="sellList.action"  target="rightFrame">&middot;出货记录</a></li>--%>
<%--								<li><a href="sellAddPage.action"  target="rightFrame">&middot;商品出库</a></li>--%>
<%--							</ul>--%>
<%--						</div>--%>


<%--					<s:if test="#session.user.grop.id==1">--%>
<%--						<div class="meun_top">--%>
<%--							<div id="img4" class="meun_img"></div>--%>
<%--							<a onclick="show_menu_box(4)" href="javascript:;">用户管理</a>--%>
<%--						</div>--%>
<%--						<div class="meun_box none_box" id="box4">--%>
<%--							<ul>--%>
<%--								<li><a href="userList.action"  target="rightFrame">&middot;用户管理</a></li>--%>
<%--								<li><a href="userAddPage.action"  target="rightFrame">&middot;添加用户</a></li>--%>

<%--							</ul>--%>
<%--						</div>--%>

<%--						<div class="meun_top">--%>
<%--							<div id="img5" class="meun_img"></div>--%>
<%--							<a onclick="show_menu_box(5)" href="javascript:;">基础信息</a>--%>
<%--						</div>--%>
<%--						<div class="meun_box none_box" id="box5">--%>
<%--							<ul>--%>
<%--								<li><a href="factoryList.action" target="rightFrame">&middot;供货厂商</a></li>--%>
<%--								<li><a href="factoryAddPage.action" target="rightFrame">&middot;添加厂商</a></li>--%>
<%--								<li><a href="typeList.action" target="rightFrame">&middot;商品类别</a></li>--%>
<%--								<li><a href="typeAddPage.action" target="rightFrame">&middot;添加类别</a></li>--%>
<%--								<li><a href="groupList.action" target="rightFrame">&middot;用户分组</a></li>--%>
<%--								<li><a href="groupAddPage.action" target="rightFrame">&middot;添加分组</a></li>--%>
<%--							</ul>--%>
<%--						</div>--%>
<%--					</s:if>--%>


<%--					</div>--%>
<%--				</td>--%>
<%--			  </tr>--%>
<%--			</table>--%>
<%--		</td>--%>
<%--	  </tr>--%>
<%--	</table>--%>
<%--</div>--%>
=======
>>>>>>> siran
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<script type="text/javascript">
	if(document.location.hostname == 'pratikborsadiya.in') {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-72504830-1', 'auto');
		ga('send', 'pageview');
	}
</script>
</body>
</html>
