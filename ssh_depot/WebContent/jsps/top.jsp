<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">

<<<<<<< HEAD

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
=======
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
>>>>>>> siran
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->

    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.userBox:hover{
    background: #00635a;
    cursor: pointer;

}
.titleBox>span :hover{
    background: #00635a;
    color: white;

}
.titleBox{
    display: flex;
    justify-content: space-between;
    padding: 0 40px;
    cursor: pointer;
}
.userBox{
    display: flex;
    width: fit-content;

    padding: 10px;
    justify-content: center;
}
.userLogo{
    font-size: 30px;
    color: white;
    margin-right: 10px;
}

        .userName{
            font-size: 15px;
            color: white;
        }
        .title{
            height: 15vh;
            background: #1F4A65;

        }
</style>
</head>
<script type="text/javascript">
    $('#userBox').onclick(function () {
        alert("!!!!")
    })
</script>
<body>
<<<<<<< HEAD
<%--<div>--%>
<%--    <header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>--%>
<%--        <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>--%>
<%--        <!-- Navbar Right Menu-->--%>
<%--        <ul class="app-nav">--%>
<%--            <li class="app-search">--%>
<%--                <input class="app-search__input" type="search" placeholder="Search">--%>
<%--                <button class="app-search__button"><i class="fa fa-search"></i></button>--%>
<%--            </li>--%>
<%--            <!--Notification Menu-->--%>
<%--            <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>--%>
<%--                <ul class="app-notification dropdown-menu dropdown-menu-right">--%>
<%--                    <li class="app-notification__title">You have 4 new notifications.</li>--%>
<%--                    <div class="app-notification__content">--%>
<%--                        <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>--%>
<%--                            <div>--%>
<%--                                <p class="app-notification__message">Lisa sent you a mail</p>--%>
<%--                                <p class="app-notification__meta">2 min ago</p>--%>
<%--                            </div></a></li>--%>
<%--                        <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>--%>
<%--                            <div>--%>
<%--                                <p class="app-notification__message">Mail server not working</p>--%>
<%--                                <p class="app-notification__meta">5 min ago</p>--%>
<%--                            </div></a></li>--%>
<%--                        <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>--%>
<%--                            <div>--%>
<%--                                <p class="app-notification__message">Transaction complete</p>--%>
<%--                                <p class="app-notification__meta">2 days ago</p>--%>
<%--                            </div></a></li>--%>
<%--                        <div class="app-notification__content">--%>
<%--                            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>--%>
<%--                                <div>--%>
<%--                                    <p class="app-notification__message">Lisa sent you a mail</p>--%>
<%--                                    <p class="app-notification__meta">2 min ago</p>--%>
<%--                                </div></a></li>--%>
<%--                            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>--%>
<%--                                <div>--%>
<%--                                    <p class="app-notification__message">Mail server not working</p>--%>
<%--                                    <p class="app-notification__meta">5 min ago</p>--%>
<%--                                </div></a></li>--%>
<%--                            <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>--%>
<%--                                <div>--%>
<%--                                    <p class="app-notification__message">Transaction complete</p>--%>
<%--                                    <p class="app-notification__meta">2 days ago</p>--%>
<%--                                </div></a></li>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <li class="app-notification__footer"><a href="#">See all notifications.</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <!-- User Menu-->--%>
<%--            <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>--%>
<%--                <ul class="dropdown-menu settings-menu dropdown-menu-right">--%>
<%--                    <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>--%>
<%--                    <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>--%>
<%--                    <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--    </header>--%>
<%--</div>--%>
<div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="    background-color: rgb(0,150,136);">
        <tr>
            <td height="36"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="282" height="52">
        	<span style="font-size:24px;font-weight:bolder;margin-left:60px;">
        		体育馆管理系统</span>
                    </td>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td>
	            <span class="STYLE1">
	            <img src="images/home.gif" width="12" height="13">
	            </span>
                                <span class="STYLE4">
	            <a href="jsps/main.jsp"  target=_top>回首页</a>
	            </span>
                                <span class="STYLE1">
	            <img src="images/quit.gif" width="16" height="16">
	            </span>
                                <span class="STYLE4">
	            	<a href="login.jsp"  onclick="if (confirm('确定要退出吗？')) return true; else return false;" target=_top>
	            		退出系统</a>
	            </span>
                                <span class="STYLE1"> </span>
                            </td>
                        </tr>
                    </table></td>
                    <td width="247" >&nbsp;</td>
                    <td width="283" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td>
                                <img src="images/uesr.gif" width="14" height="14">
                                <span class="STYLE2"> 当前登录用户：<s:property value="#session.user.username"></s:property>
					 角色：<s:if test="#session.user.grop.id==1">经理</s:if><s:if test="#session.user.grop.id==2">员工</s:if>
				</span>
                            </td>
                        </tr>
                    </table></td>
=======

<div>

    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color: rgb(0,150,136);">
        <tr>
            <td >
                <div class="titleBox">
                   <span style="color: white">
                体育管理系统
            </span>
                    <span>
	            	<a href="login.jsp"  onclick="if (confirm('确定要退出吗？')) return true; else return false;" target=_top style="color: white">
	            		退出系统</a>
	            </span>
                </div>

            </td>

                    <td >
<%--                        <a href="userUpdatePage.action?user.id=+'#session.user.id'" target="rightFrame">--%>
                            <div class="userBox" id="userBox" >
                                <i class="fa fa-user userLogo" >
                                </i>
                                <span class="userName">
                                    <s:property value="#session.user.username"></s:property>
                               </span>
                            </div>
<%--                        </a>--%>

				</span>

                    </td>
>>>>>>> siran
                </tr>
            </table></td>
        </tr>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</div>
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
<<<<<<< HEAD
=======
  <%--function userDetail() {--%>
  <%-- window.location.href="<%=basePath %>/userUpdatePage.action?user.id="+"#session.user.id"--%>
  <%--}--%>
>>>>>>> siran
</script>
</body>
</html>
