<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


	<!-- Open Graph Meta-->
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="Vali Admin">
	<meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
	<meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
	<meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
	<meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
	<title>Vali Admin - Free Bootstrap 4 Admin Template</title>
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
	<div class="accordion" id="accordionExample">
		<div class="card">
			<div class="card-header" id="headingOne">
				<h2 class="mb-0">
					<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						<i class="icon fa fa fa-user"></i> 人员管理
						<i class="fa fa-angle-right" style="color: white;float: right"></i>
					</button>
				</h2>
			</div>

			<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				<div class="card-body">

					<ul class="nav nav-pills nav-stacked">
						<li><a href="userList.action"  target="rightFrame"><i class="icon fa fa fa-user-md"></i> &middot用户列表</a></li>
						<li><a href="userAddPage.action"  target="rightFrame"><i class="icon fa fa-user-plus"></i> &middot添加用户</a></li>
						<li><a href="groupList.action" target="rightFrame"><i class="icon fa fa-user-o"></i> &middot用户分组</a></li>
						<li><a href="groupAddPage.action" target="rightFrame"><i class="icon fa fa fa-user"></i> &middot添加分组</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>

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
</body>
</html>
