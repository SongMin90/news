<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<meta name="baidu_union_verify"
	content="8d5bf425f47fc467d33f2d3fe85d7b8d">
<meta name="uyan_auth" content="a48d22580b" />
<title>${requestScope.session.webSiteTitle}</title>
<link rel="icon" href="images/sys/news.ico" type="image/x-icon">
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body onload="createCode()">
	<div class="bg"
		style="background: url(images/sys/bg.jpg); -moz-background-size: 100%  100%; background-size: 100%  100%; background-attachment: fixed;"></div>
	<div class="container">
		<div class="line bouncein">
			<div class="xs6 xm4 xs3-move xm4-move">
				<div style="height: 150px;"></div>
				<div class="media media-y margin-big-bottom"></div>
				<form action="${pageContext.request.contextPath}/user_login.html"
					method="post">
					<div class="panel loginbox"
						style="background: url(images/sys/tmbg-white.png);">
						<div class="text-center margin-big padding-big-top">
							<h1>用户登录</h1>
						</div>
						<div class="panel-body"
							style="padding: 30px; padding-bottom: 10px; padding-top: 10px;">
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="text" class="input input-big" name="user_name"
										placeholder="登录昵称" data-validate="required:请填写昵称" /> <span
										class="icon icon-user margin-small"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="field field-icon-right">
									<input type="password" class="input input-big"
										name="user_password" placeholder="登录密码"
										data-validate="required:请填写密码" /> <span
										class="icon icon-key margin-small"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="field">
									<input type="hidden" name="input_code" id="input_code" /> <input
										type="text" class="input input-big" name="code" id="code"
										placeholder="填写右侧的验证码"
										data-validate="required:请填写右侧的验证码,repeat#input_code:验证码不正确" />
									<a class="passcode text-large text-main"
										style="height: 40px; cursor: pointer; width: 100px; -moz-user-select: none; /*火狐*/ -webkit-user-select: none; /*webkit浏览器*/ -ms-user-select: none; /*IE10*/ -khtml-user-select: none; /*早期浏览器*/ user-select: none;"
										id="code_ok" onclick="createCode()"></a>
								</div>
							</div>
						</div>
						<div style="padding: 10px 30px 20px 30px;">
							<input type="submit"
								class="button button-block bg-main text-big input-big"
								value="登录">
						</div>
						<div class="form-group">
							<div class="field text-center">
								<p class="text-muted text-center">
									<a class=""
										href="${pageContext.request.contextPath}/user_toRegister.html">立即注册</a>
									| <a class=""
										href="${pageContext.request.contextPath}/user_toFpwd.html">忘记密码？</a>
								</p>
							</div>
						</div>
						<div></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/checkCode.js"></script>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="#session.user == null"><script src="js/getLoginInfo.js"></script></s:if>
</html>