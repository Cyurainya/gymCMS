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

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  <%--function userDetail() {--%>
  <%-- window.location.href="<%=basePath %>/userUpdatePage.action?user.id="+"#session.user.id"--%>
  <%--}--%>
</script>
</body>
</html>
