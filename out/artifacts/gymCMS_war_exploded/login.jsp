<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Main CSS-->
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!-- Font-icon css-->
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>登录体育馆系统</title>
<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}
.STYLE3 {
	color: #528311;
	font-size: 12px;
}
.STYLE4 {
	color: #42870a;
	font-size: 12px;
}
.login-content .login-box.flipped {
	min-height: 600px;
}
.login-content .login-box{
	min-height:600px;
}
</style>

</head>

<body>
<div>
	<section class="material-half-bg">
		<div class="cover"></div>
	</section>
	<section class="login-content">
		<div class="logo">
			<h1>Gym-CMS</h1>
		</div>
		<div class="login-box">
			<form class="login-form" action="userLogin.action" method="post" id="form_login">
				<h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>SIGN IN</h3>
				<div class="form-group">
					<label class="control-label">USERNAME</label>
					<input class="form-control" type="text" placeholder="Email" autofocus name="user.username">
				</div>
				<div class="form-group">
					<label class="control-label">PASSWORD</label>
					<input class="form-control" type="password" placeholder="Password" name="user.password">
				</div>
				<div class="form-group">
					<div class="utility">

						<p class="semibold-text mb-2"><a href="#" data-toggle="flip">registered</a></p>
					</div>
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block" id="loginBtn"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN</button>
				</div>
			</form>
			<form class="forget-form" >
				<h3 class="login-head"><i class="fa fa-lg fa-fw fa-lock"></i>registered</h3>
				<div class="form-group">
					<label class="control-label">Name</label>
					<input class="form-control" type="text" >
				</div>
				<div class="form-group">
					<label class="control-label">Phone</label>
					<input class="form-control" type="text" >
				</div>

				<div class="form-group">
					<label class="control-label">PassWord</label>
					<input class="form-control" type="text" >
				</div>
				<div class="form-group">
					<label class="control-label">Role</label>
					<select class="form-control">
						<option >Student</option>
						<option >Manager</option>

					</select>
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block"><i class="fa fa-unlock fa-lg fa-fw"></i>registered</button>
				</div>
				<div class="form-group mt-3">
					<p class="semibold-text mb-0"><a href="#" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i> Back to Login</a></p>
				</div>
			</form>
		</div>
	</section>
</div>
<%--<div style="display: none">--%>
<%--	<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">--%>
<%--		<tr><td bgcolor="#e5f6cf">&nbsp;</td></tr>--%>
<%--		<tr>--%>
<%--			<td height="608" background="images/login_03.gif">--%>
<%--				<table width="862" border="0" align="center" cellpadding="0" cellspacing="0">--%>
<%--					<tr><td height="266" background="images/login_04.gif">&nbsp;</td></tr>--%>
<%--					<tr><td height="95">--%>
<%--						<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--							<tr>--%>
<%--								<td width="424" height="95" background="images/login_06.gif">&nbsp;</td>--%>
<%--								<td width="183" background="images/login_07.gif">--%>
<%--									<div align="center" style="color: yellow;font-size: 20px">仓库管理系统</div>--%>

<%--									<form action="userLogin.action" method="post" id="form_login">--%>
<%--										<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--											<tr>--%>
<%--												<td width="21%" height="30"><div align="center"><span class="STYLE3">用户</span></div></td>--%>
<%--												<td width="79%" height="30"><input type="text" name="user.username" value="1" style="height: 18px; width: 130px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;"></td>--%>
<%--											</tr>--%>
<%--											<tr>--%>
<%--												<td height="30"><div align="center"><span class="STYLE3">密码</span></div></td>--%>
<%--												<td height="30"><input type="password" name="user.password" value="1" style="height: 18px; width: 130px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;"></td>--%>
<%--											</tr>--%>
<%--											<tr>--%>
<%--												<td height="30">&nbsp;</td>--%>
<%--												<td height="30"><img src="images/dl.gif" width="81" height="22" border="0" usemap="#Map"></td>--%>
<%--											</tr>--%>
<%--										</table>--%>
<%--									</form>--%>


<%--								</td>--%>
<%--								<td width="255" background="images/login_08.gif">&nbsp;</td>--%>
<%--							</tr>--%>
<%--						</table></td>--%>
<%--					</tr>--%>
<%--					<tr><td height="247" valign="top" background="images/login_09.gif">--%>
<%--						<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--							<tr><td width="22%" height="30">&nbsp;</td>--%>
<%--								<td width="30%">&nbsp;</td>--%>
<%--								<td width="26%"><font color="red" size="2"><s:actionerror/></font></td>--%>
<%--								<td width="22%">&nbsp;</td>--%>
<%--							</tr></table></td></tr>--%>
<%--				</table></td>--%>
<%--		</tr>--%>
<%--		<tr><td bgcolor="#a2d962">&nbsp;</td></tr>--%>
<%--	</table>--%>
<%--	<map name="Map">--%>
<%--		<area shape="rect" coords="3,3,36,19" href="javascript:document.getElementById('form_login').submit();">--%>
<%--		<area shape="rect" coords="40,3,78,18" href="javascript:document.getElementById('form_login').reset();">--%>
<%--	</map>--%>
<%--</div>--%>



<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<script type="text/javascript">
	// Login Page Flipbox control
	$('.login-content [data-toggle="flip"]').click(function() {
		$('.login-box').toggleClass('flipped');
		return false;
	});
	$('#loginBtn').click(function () {
		document.getElementById('form_login').submit()
	})
</script>
</body>
</html>
