<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>${requestScope.session.webSiteTitle}</title>
<link rel="icon" href="images/sys/news.ico" type="image/x-icon">
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<div class="header bg-main"
		style="background: url(images/sys/bg.jpg) no-repeat 0 -1000px;">
		<div class="logo margin-big-left fadein-top">
			<h1>后台管理中心</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-green" href="${pageContext.request.contextPath}/page/index.jsp"
				target="_parent"><span class="icon-home"></span> 前台首页</a>
			&nbsp;&nbsp;<a href="javascript:void(0)" onclick="return clearCache()" class="button button-little bg-blue"><span
				class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a
				class="button button-little bg-red" href="${pageContext.request.contextPath}/user_Logout.html"><span
				class="icon-power-off"></span> 退出登录</a>
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title"
			style="background: url(images/sys/bg.jpg) no-repeat 0 -1000px;">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<h2>
			<span class="icon-pencil-square-o"></span>新闻管理
		</h2>
		<ul>
			<li><a href="${pageContext.request.contextPath}/news_toAdd.html" target="right"><span class="icon-caret-right"></span>添加新闻</a></li>
			<li><a href="${pageContext.request.contextPath}/news_findAll.html" target="right"><span class="icon-caret-right"></span>我的新闻</a></li>
		</ul>
		<h2>
			<span class="icon-tasks"></span>栏目管理
		</h2>
		<ul>
			<li><a href="${pageContext.request.contextPath}/columns_toAddColumns.html" target="right"><span class="icon-caret-right"></span>添加栏目</a></li>
			<li><a href="${pageContext.request.contextPath}/columns_findAll.html" target="right"><span class="icon-caret-right"></span>全部栏目</a></li>
		</ul>
		<h2>
			<span class="icon-comments-o"></span>评论管理
		</h2>
		<ul>
			<li><a href="${pageContext.request.contextPath}/comment_findAll.html" target="right"><span class="icon-caret-right"></span>我的评论</a></li>
		</ul>
		<h2>
			<span class="icon-cogs"></span>系统管理
		</h2>
		<ul>
			<li><a href="${pageContext.request.contextPath}/images_findAll.html?images_classification=0" target="right"><span class="icon-caret-right"></span>系统图片</a></li>
			<li><a href="${pageContext.request.contextPath}/system_toSystem.html" target="right"><span class="icon-caret-right"></span>系统配置</a></li>
		</ul>
		<h2>
			<span class="icon-user"></span>用户管理
		</h2>
		<ul>
			<li><a
				href="${pageContext.request.contextPath}/user_toEdit.html?user_id=${user.user_id}" 
				target="right"><span class="icon-caret-right"></span>个人信息</a></li>
			<li><a
				href="${pageContext.request.contextPath}/user_toAdd.html"
				target="right"><span class="icon-caret-right"></span>新增管理</a></li>
			<li><a
				href="${pageContext.request.contextPath}/user_findAll.html"
				target="right"><span class="icon-caret-right"></span>全部用户</a></li>
		</ul>
	</div>
	<ul class="bread">
		<li><a href="${pageContext.request.contextPath}/user_toOverview.html?user_id=${user.user_id}" target="right" class="icon-home"> 首页</a></li>
		<li><a id="a_leader_txt">信息总览</a></li>
		<li><b>当前时间：</b><a><span id="time"></span></a></li>
		<li>
			<b>当前语言：</b><a><span>中文</span></a>
  			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  			切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a>
  		</li>	
	</ul>
	<div class="admin">
		<iframe src="${pageContext.request.contextPath}/user_toOverview.html?user_id=${user.user_id}" name="right" width="100%" height="100%"></iframe>
	</div>
</body>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">
	/* 选择显示 */
	$(function() {
		$(".leftnav h2").click(function() {
			$(this).next().slideToggle(200);
			$(this).toggleClass("on");
		})
		$(".leftnav ul li a").click(function() {
			$("#a_leader_txt").text($(this).text());
			$(".leftnav ul li a").removeClass("on");
			$(this).addClass("on");
		})
		$(".icon-home").click(function() {
			$("#a_leader_txt").text("信息总览");
		})
	});
	/* 时间显示 */
	var myVar = setInterval(function() {
		myTimer()
	}, 100);
	function myTimer() {
		var d = new Date();
		var t = d.toLocaleTimeString();
		document.getElementById("time").innerHTML = t;
	}
	function clearCache() {
		<%
		response.setHeader("Pragma","No-cache"); 
		response.setHeader("Cache-Control","no-cache"); 
		response.setDateHeader("Expires", 0);
		%>
		alert("缓存已经清除!");
		parent.location.reload();//刷新父页面
	}
</script>
</html>