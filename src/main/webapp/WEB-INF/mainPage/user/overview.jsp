<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="xm3">
	<div class="panel border-back">
		<div class="panel-body text-center">
			<img src="${user.images.images_name}" width="120" height="120" class="radius-circle rotate-hover" alt="" />
			<br />
		</div>
		<div class="panel-foot bg-back border-back">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎光临！上次登录为${user.last_login}</div>
	</div>
	<br />
</div>
<div class="xm9">
	<div class="alert alert-yellow"><span class="close"></span><strong>注意：</strong>您有5条未读信息，<a href="#">点击查看</a>。</div>
	<div class="panel">
		<div class="panel-head"><strong>系统信息</strong></div>
		<table class="table">
			<tr>
				<th colspan="2">服务器信息</th>
				<th colspan="2">系统信息</th>
			</tr>
			<tr>
				<td width="110" align="right">操作系统：</td>
				<td>Centos6.7(64位)</td>
				<td width="90" align="right">系统开发：</td>
				<td><a href="http://www.pintuer.com" target="_blank">新闻管理系统</a></td>
			</tr>
			<tr>
				<td align="right">Web服务器：</td>
				<td>Tomcat8.5</td>
				<td align="right">主页：</td>
				<td><a href="http://songm.me" target="_blank">http://songm.me</a></td>
			</tr>
			<tr>
				<td align="right">程序语言：</td>
				<td>java</td>
				<td align="right">演示：</td>
				<td><a href="http://songm.me" target="_blank">demo/</a></td>
			</tr>
			<tr>
				<td align="right">数据库：</td>
				<td>MySQL</td>
				<td align="right">联系管理：</td>
				<td><a href="tencent://message/?uin=1044453961" target="_blank">1044453961</a></td>
			</tr>
		</table>
	</div>
</div>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>