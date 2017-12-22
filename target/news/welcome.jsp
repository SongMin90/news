<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>
<link rel="icon" href="images/sys/news.ico" type="image/x-icon">
</head>
<body>
<a href="${pageContext.request.contextPath}/page/index.jsp">首页</a>
<a href="${pageContext.request.contextPath}/user_toLogin.html" target="_top">登录</a><br>
你的昵称：${user.user_name} || <s:property value="#session.user.user_password"/><br>
this is welcome.jsp
<s:debug></s:debug>
</body>
</html>