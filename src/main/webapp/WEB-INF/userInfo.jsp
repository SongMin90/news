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
	</div>
	<div class="panel">
		<ul class="list-group">
			<li><span class="float-right">${requestScope.user.user_name}</span><span class="icon-user"></span> 昵称</li>
			<li><span class="float-right">${requestScope.user.user_sex}</span><span class="icon-child"></span> 性别</li>	
			<li>
				<s:if test="#user.user_state == 0"><span class="float-right">管理员</span></s:if>
        		<s:elseif test="#user.user_state == 1"><span class="float-right">普通用户</span></s:elseif>
        		<s:elseif test="#user.user_state == 2"><span class="float-right">禁言</span></s:elseif>
        		<s:elseif test="#user.user_state == 3"><span class="float-right">禁言禁发布</span></s:elseif>
			&nbsp;<span class="icon-info"></span> 状态</li>	
			<li><span class="float-right">${requestScope.user.user_email}</span><span class="icon-envelope"></span> 邮箱</li>
			<li>
				<s:if test="#news_count > 0">
					<a target="_parent" href="news_findNews_ByU.html?user_news_id=${requestScope.user.user_id}"><span class="float-right badge bg-main">${requestScope.news_count}</span><span class="icon-file-text"></span> 发布的新闻</a>
				</s:if>
				<s:else>
					<span class="float-right badge bg-main">${requestScope.news_count}</span><span class="icon-file-text"></span> 发布的新闻
				</s:else>
			</li>
			
		</ul>
	</div>
</div>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>