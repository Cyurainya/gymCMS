<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath %>"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="../../css/register.css">


</head>
<style>
	html body{
		/*background: rgb(229,229,229);*/
	}
	.formDiv{
		width: 100%;
		padding: 30px;
		background-color: white;
		box-shadow: 10px 10px 5px 0px #888888;
		border-radius: 5px;
		margin: 20vh auto;
	}
	.selectBox{
		width: 149px;height: 5vh;cursor: pointer;
	}

</style>
<body>
<div class="container">

	<div class="formDiv">
		<form action="userUpdate.action" method="post" role="form">
				<input type="hidden" name="page" value="${param.page}"/>
				<input type="hidden" name="user.id" value="${user.id}"/>
				<input type="hidden" name="user.username" value="${user.username}"/>
			<div class="form-group has-feedback">
				<label for="username">姓名</label>
				<div class="input-group">
					<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
					<input id="username" class="form-control" placeholder="用户名不得少于五个字符" maxlength="20" type="text" name="user.username" required="required" value="${user.username}">
				</div>

				<span style="color:red;display: none;" class="tips"></span>
				<span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
				<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>

			</div>

			<div class="form-group has-feedback">
				<label for="password">密码</label>
				<div class="input-group">
					<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
					<input id="password" value="${user.password}" class="form-control" placeholder="密码不得少于八个字符且至少包含字母、数字、特殊字符的两种" maxlength="20" type="password">
				</div>

				<span style="color:red;display: none;" class="tips"></span>
				<span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
				<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
			</div>

			<div class="form-group has-feedback">
				<label for="passwordConfirm">确认密码</label>
				<div class="input-group">
					<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
					<input id="passwordConfirm" class="form-control" placeholder="请再次输入密码" maxlength="20" type="password" name="user.password" required="required">
				</div>
				<span style="color:red;display: none;" class="tips"></span>
				<span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
				<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<label for="phoneNum">手机号码</label>
				<div class="input-group">
					<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
					<input id="phoneNum" name="user.phone" required="required" class="form-control" placeholder="请输入手机号码" maxlength="11" type="text" value="${user.phone}">
				</div>
				<span style="color:red;display: none;" class="tips"></span>
				<span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
				<span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
			</div>

			<div class="form-group has-feedback">
				<label >角色</label>
					<select name="user.grop.id" >
					<s:iterator value="groupList">
						<s:if test='id == user.grop.id'>
							<option value="<s:property value='id'/>" selected><s:property value="name"/></option>
						</s:if>
						<s:else>
							<option value="<s:property value='id'/>"><s:property value="name"/></option>
						</s:else>
					</s:iterator>
				</select>

			</div>

			<div class="form-group">
				<input class="form-control btn btn-primary" id="submit" value="確認修改" type="submit">
			</div>

			<div class="form-group">
				<input value="重置" id="reset" class="form-control btn btn-danger" type="reset">
			</div>
		</form>
	</div>


</div>
</div>
<script src="../../js/registerValid.js"></script>
<script type="text/javascript">
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
	$('.container').find('input').eq(0).change(function() {


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

	$('.container').find('input').eq(1).change(function() {

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
	$('.container').find('input').eq(2).change(function() {

		if ($(this).val() == password) {
			success($(this), 2);
		} else {

			fail($(this), 2, '两次输入的密码不一致');
		}

	});

	// 手机号码
	var regPhoneNum = /^[0-9]{11}$/
	$('.container').find('input').eq(3).change(function() {
		if (regPhoneNum.test($(this).val())) {
			success($(this), 4);
		} else {
			fail($(this), 4, '手机号码只能为11位数字');
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

	$('#reset').click(function() {
		$('input').slice(0, 6).parent().parent().removeClass('has-error has-success');
		$('.tips').hide();
		$('.glyphicon-ok').hide();
		$('.glyphicon-remove').hide();
		check = [false, false, false, false, false, false, ];
	});
</script>

</body>
</html>
<%--<form action="userUpdate.action" method="post" role="form">--%>
<%--	<input type="hidden" name="page" value="${param.page}"/>--%>
<%--	<input type="hidden" name="user.id" value="${user.id}"/>--%>
<%--	<input type="hidden" name="user.username" value="${user.username}"/>--%>

<%--	用户：${user.username}<br>--%>
<%--	密码：<input type="text" name="user.password" value="${user.password}" required="required"/><br>--%>
<%--	类型：<select name="user.grop.id" style="width:149px;">--%>
<%--	<s:iterator value="groupList">--%>
<%--		<s:if test='id == user.grop.id'>--%>
<%--			<option value="<s:property value='id'/>" selected><s:property value="name"/></option>--%>
<%--		</s:if>--%>
<%--		<s:else>--%>
<%--			<option value="<s:property value='id'/>"><s:property value="name"/></option>--%>
<%--		</s:else>--%>
<%--	</s:iterator>--%>
<%--</select>--%>

<%--	<input type="submit" value="修改"/><s:actionerror/>--%>

<%--</form>--%>
