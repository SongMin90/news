<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>500</title>  
    <link rel="icon" href="images/sys/news.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
</head>
<body style="background:url(images/sys/bg.jpg);-moz-background-size:100% 100%;background-size:100% 100%;background-attachment: fixed;">
<div class="container">
	<div class="panel margin-big-top">
	<div class="text-center">
		<br>
		<h2  class="padding-top">
			抱歉您的网络已经离线
		</h2>
		<img src="images/sys/500.jpg" width=800 height=500 />
		<div class="padding-big">
			<a href="${pageContext.request.contextPath}/welcome.jsp" target="_parent" class="button bg-yellow">返回首页</a>
		</div>
	</div>
	</div>
</div>
</body>
</html>