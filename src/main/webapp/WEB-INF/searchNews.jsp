<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>${requestScope.session.webSiteTitle}</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/style.css">
<link rel="icon" href="images/sys/news.ico" type="image/x-icon">
<script src="js/jquery.min.js"></script>
<s:if test="#session.user == null">
	<script src="js/getLoginInfo.js"></script>
</s:if>
<s:if test="#session.allColumns == null">
	<script src="js/getAllColumns.js"></script>
</s:if>
<s:if test="#session.webSiteTitle == null">
	<script src="js/getWebTitle.js"></script>
</s:if>
</head>
<body onload="doColumns('${columns_news_id}')">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 125px">
		<div class="line">
			<jsp:include page="searchInfo.jsp"></jsp:include>
			<jsp:include page="right.jsp"></jsp:include>
		</div>
	</div>
	<br>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
