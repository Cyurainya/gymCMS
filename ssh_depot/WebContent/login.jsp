<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<<<<<<< HEAD
=======
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

>>>>>>> siran
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
<<<<<<< HEAD
	min-height: 600px;
=======
	min-height: 700px;
>>>>>>> siran
}
.login-content .login-box{
	min-height:600px;
}
<<<<<<< HEAD
=======
	.input-group>.form-control{
		width: 100%;
	}
.input-group{
	flex-direction: column;
}
.form-control{
	height: 4vh;
}
.login-content .login-box .btn-container{
	margin-bottom: 10px;
}
>>>>>>> siran
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
<<<<<<< HEAD
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
=======

			<form class="forget-form regisForm" action="userAdd.action" method="post" role="form">
				<h3 class="login-head"><i class="fa fa-lg fa-fw fa-lock"></i>registered</h3>
				<div class="form-group">
					<div class="input-group">
						<label class="control-label">Name</label>
						<input id="username" class="form-control" placeholder="用户名不得少于五个字符" maxlength="20" type="text" name="user.username" required="required">
					</div>
					<span style="color:red;display: none;" class="tips"></span>

					<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>


				</div>
				<div class="form-group">
					<div class="input-group">
						<label class="control-label">password</label>
						<input id="password" class="form-control" placeholder="密码不得少于八个字符且至少包含字母、数字、特殊字符的两种" maxlength="20" type="password">
					</div>
					<span style="color:red;display: none;" class="tips"></span>

					<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>

				</div>
				<div class="form-group">
					<div class="input-group">
						<label class="control-label">Confirm PassWord</label>
						<input id="passwordConfirm" class="form-control" placeholder="请再次输入密码" maxlength="20" type="password" name="user.password" required="required">
					</div>
					<span style="color:red;display: none;" class="tips"></span>

					<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>

				</div>
				<div class="form-group">
					<div class="input-group">
						<label class="control-label">phone</label>
						<input id="phoneNum" name="user.phone" required="required" class="form-control" placeholder="请输入手机号码" maxlength="11" type="text">
					</div>
					<span style="color:red;display: none;" class="tips"></span>

					<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>

				</div>
				<div class="form-group">
					<label class="control-label">Role</label>
					<select class="form-control" name="user.grop.id">
						<option value="1" name="1">学生</option>
						<option value="2" name="2">老师</option>
						<option value="3" name="3">管理者</option>
					</select>
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block" id="regisBtn" type="submit"><i class="fa fa-unlock fa-lg fa-fw"></i>registered</button>
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block" id="resetBtn"><i class="fa fa-unlock fa-lg fa-fw"></i>reset</button>
>>>>>>> siran
				</div>
				<div class="form-group mt-3">
					<p class="semibold-text mb-0"><a href="#" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i> Back to Login</a></p>
				</div>
			</form>
		</div>
	</section>
</div>
<<<<<<< HEAD
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



=======
\
>>>>>>> siran
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<script type="text/javascript">
<<<<<<< HEAD
=======
	$(document).ready(function () {
		$('input').slice(0, 6).parent().parent().removeClass('has-error has-success');
		$('.tips').hide();
		$('.glyphicon-ok').hide();
		$('.glyphicon-remove').hide();
		check = [false, false, false, false, false, false, ];
	})
	var settings = {
		e: 'idcode',
		codeType: {
			name: 'follow',
			len: 4
		}, //len是修改验证码长度的
		codeTip: '换个验证码?',
		inputID: 'idcode-btn' //验证元素的ID
	};

	var _set = {
		storeLable: 'codeval',
		store: '#ehong-code-input',
		codeval: '#ehong-code'
	}
	$.idcode = {
		getCode: function(option) {
			_commSetting(option);
			return _storeData(_set.storeLable, null);
		},
		setCode: function(option) {
			_commSetting(option);
			_setCodeStyle("#" + settings.e, settings.codeType.name, settings.codeType.len);

		},
		validateCode: function(option) {
			_commSetting(option);
			var inputV;
			if (settings.inputID) {
				inputV = $('#' + settings.inputID).val();

			} else {
				inputV = $(_set.store).val();
			}
			if (inputV.toUpperCase() == _storeData(_set.storeLable, null).toUpperCase()) { //修改的不区分大小写
				return true;
			} else {
				_setCodeStyle("#" + settings.e, settings.codeType.name, settings.codeType.len);
				return false;
			}
		}
	};

	function _commSetting(option) {
		$.extend(settings, option);
	}

	function _storeData(dataLabel, data) {
		var store = $(_set.codeval).get(0);
		if (data) {
			$.data(store, dataLabel, data);
		} else {
			return $.data(store, dataLabel);
		}
	}

	function _setCodeStyle(eid, codeType, codeLength) {
		var codeObj = _createCode(settings.codeType.name, settings.codeType.len);
		var randNum = Math.floor(Math.random() * 6);
		var htmlCode = ''
		if (!settings.inputID) {
			htmlCode = '<span><input id="ehong-code-input" type="text" maxlength="4" /></span>';
		}
		htmlCode += '<div id="ehong-code" class="ehong-idcode-val ehong-idcode-val';
		htmlCode += String(randNum);
		htmlCode += '" href="#" onblur="return false" onfocus="return false" oncontextmenu="return false" onclick="$.idcode.setCode()">' + _setStyle(codeObj) + '</div>' + '<span id="ehong-code-tip-ck" class="ehong-code-val-tip" onclick="$.idcode.setCode()">' + settings.codeTip + '</span>';
		$(eid).html(htmlCode);
		_storeData(_set.storeLable, codeObj);
	}

	function _setStyle(codeObj) {
		var fnCodeObj = new Array();
		var col = new Array('#BF0C43', '#E69A2A', '#707F02', '#18975F', '#BC3087', '#73C841', '#780320', '#90719B', '#1F72D8', '#D6A03C', '#6B486E', '#243F5F', '#16BDB5');
		var charIndex;
		for (var i = 0; i < codeObj.length; i++) {
			charIndex = Math.floor(Math.random() * col.length);
			fnCodeObj.push('<font color="' + col[charIndex] + '">' + codeObj.charAt(i) + '</font>');
		}
		return fnCodeObj.join('');
	}

	function _createCode(codeType, codeLength) {
		var codeObj;
		if (codeType == 'follow') {
			codeObj = _createCodeFollow(codeLength);
		} else if (codeType == 'calc') {
			codeObj = _createCodeCalc(codeLength);
		} else {
			codeObj = "";
		}
		return codeObj;
	}

	function _createCodeCalc(codeLength) {
		var code1, code2, codeResult;
		var selectChar = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
		var charIndex;
		for (var i = 0; i < codeLength; i++) {
			charIndex = Math.floor(Math.random() * selectChar.length);
			code1 += selectChar[charIndex];

			charIndex = Math.floor(Math.random() * selectChar.length);
			code2 += selectChar[charIndex];
		}
		return [parseInt(code1), parseInt(code2), parseInt(code1) + parseInt(code2)];
	}

	function _createCodeFollow(codeLength) {
		var code = "";
		var selectChar = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');

		for (var i = 0; i < codeLength; i++) {
			var charIndex = Math.floor(Math.random() * selectChar.length);
			if (charIndex % 2 == 0) {
				code += selectChar[charIndex].toLowerCase();
			} else {
				code += selectChar[charIndex];
			}
		}
		return code;
	}
	var regUsername = /^[a-zA-Z_][a-zA-Z0-9_]{4,19}$/;
	var regPasswordSpecial = /[~!@#%&=;':",./<>_\}\]\-\$\(\)\*\+\.\[\?\\\^\{\|]/;
	var regPasswordAlpha = /[a-zA-Z]/;
	var regPasswordNum = /[0-9]/;
	var password;
	var check = [false, false, false, false, false, false];

	//校验成功函数
	function success(Obj, counter) {
		Obj.parent().parent().removeClass('has-error').addClass('has-success');
		$('.tips').eq(counter).hide();
		$('.glyphicon-ok').eq(counter).show();
		$('.glyphicon-remove').eq(counter).hide();
		check[counter] = true;

	}

	// 校验失败函数
	function fail(Obj, counter, msg) {
		Obj.parent().parent().removeClass('has-success').addClass('has-error');
		$('.glyphicon-remove').eq(counter).show();
		$('.glyphicon-ok').eq(counter).hide();
		$('.tips').eq(counter).text(msg).show();
		check[counter] = false;
	}

	// 用户名匹配
	$('.regisForm').find('input').eq(0).change(function() {


		if (regUsername.test($(this).val())) {
			success($(this), 0);
		} else if ($(this).val().length < 5) {
			fail($(this), 0, '用户名太短，不能少于5个字符');
		} else {
			fail($(this), 0, '用户名只能为英文数字和下划线,且不能以数字开头')
		}

	});



	// 密码匹配

	// 匹配字母、数字、特殊字符至少两种的函数
	function atLeastTwo(password) {
		var a = regPasswordSpecial.test(password) ? 1 : 0;
		var b = regPasswordAlpha.test(password) ? 1 : 0;
		var c = regPasswordNum.test(password) ? 1 : 0;
		return a + b + c;

	}

	$('.regisForm').find('input').eq(1).change(function() {

		password = $(this).val();

		if ($(this).val().length < 8) {
			fail($(this), 1, '密码太短，不能少于8个字符');
		} else {


			if (atLeastTwo($(this).val()) < 2) {
				fail($(this), 1, '密码中至少包含字母、数字、特殊字符的两种')
			} else {
				success($(this), 1);
			}
		}
	});


	// 再次输入密码校验
	$('.regisForm').find('input').eq(2).change(function() {

		if ($(this).val() == password) {
			success($(this), 2);
		} else {

			fail($(this), 2, '两次输入的密码不一致');
		}

	});

	//手机号码
	var regPhoneNum = /^[0-9]{11}$/
	$('.regisForm').find('input').eq(3).change(function() {
		if (regPhoneNum.test($(this).val())) {
			success($(this), 3);
		} else {
			console.log($(this))
			fail($(this), 3, '手机号码只能为11位数字');
		}
	});



	//
	// $('#submit').click(function(e) {
	// 	if (!check.every(function(value) {
	// 		return value == true
	// 	})) {
	// 		e.preventDefault();
	// 		for (key in check) {
	// 			if (!check[key]) {
	// 				$('.container').find('input').eq(key).parent().parent().removeClass('has-success').addClass('has-error')
	// 			}
	// 		}
	// 	}
	// });

	$('#resetBtn').click(function() {
		$("input").attr("value","");
		$('input').slice(0, 8).parent().parent().removeClass('has-error has-success');
		console.log($('input').slice(0, 6))
		$('.tips').hide();
		$('.glyphicon-ok').hide();
		$('.glyphicon-remove').hide();
		check = [false, false, false, false, false, false, ];
	});
</script>

<script type="text/javascript">
>>>>>>> siran
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
