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
                     <li><a a class="treeview-item" href="raceList.action"  target="rightFrame">赛事公告</a></li>
					<li><a a class="treeview-item" href="raceReleasePage.action"  target="rightFrame">赛事发布</a></li>
				</ul>
			</li>


		</ul>
	</aside>

</div>
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