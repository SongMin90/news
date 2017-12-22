<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="layout fixed-top bg-white border-bottom" style="z-index: 9;">
	<div class="container">
		<div class="navbar" style="padding: 15px 0px;">
			<div class="navbar-head">
				<button class="button bg icon-navicon" data-target="#navbar-big1"
					style="margin-top: -22px;"></button>
				<a class="hidden-l" href="index.html"> <img
					class="img-responsive logo showin hidden-l"
					src="images/sys/news.png" height="76px" width="70px">
				</a>
			</div>
			<div class="navbar-body nav-navicon" id="navbar-big1">
				<ul class="nav nav-inline nav-menu nav-big">
					<li id="zuixin"><a href="index.html?columns_news_id=">最新</a></li>
					<s:iterator value="#session.allColumns" var="columns">
					<li id="${columns_id}"><a href="index.html?columns_news_id=${columns_id}" onclick="return change('${columns_name}')">${columns_name}</a></li>
					</s:iterator>
					<li class="nav-more"><a href="javascript:;"
						class="icon-th-large">更多<span class="arrow"></span></a>
						<ul class="drop-menu">
							<li><a href="#">插件</a></li>
							<li><a href="#">工具</a></li>
							<li><a href="#">源码</a></li>
                                                        <li id="android_app:1.0"><a href="news.apk">客户端</a></li>
						</ul></li>
				</ul>
				<div class="navbar-form navbar-left hidden-m">
				  <form action="news_beforeSearchNews.html" method="post">
					<input name="search_content" type="text"
						class="input input-auto radius-none" size="15" placeholder="关键词"
						value="${search_content}"> <input type="submit" value="搜索"
						class="button radius-none" onclick="return search_()">
				  </form>
				</div>
				<div class="navbar-text navbar-right">
					<s:if test="#session.user != null">
						<ul class="nav nav-inline nav-menu nav-big">
							<li><a
								class="box-shadow-small padding-small bg-blue-light text-blue"
								href="javascript:void(0)"
								onclick="return seeUser('${session.user.user_name}')"> <span><img
										src="${session.user_images}" width="55" height="55"
										class="radius-circle"></span>  ${session.user.user_name}
							</a>
								<ul class="drop-menu">
									<li><a href="main.html">管理后台</a></li>
									<li><a
										href="${pageContext.request.contextPath}/user_Logout.html">退出登录</a></li>
								</ul></li>
						</ul>
					</s:if>
					<s:else>
						<a class="box-shadow-small padding-small bg-green text-white"
							href="user_toRegister.html"> <span class="icon-puzzle-piece"></span> 注册
						</a>  <a
							class="box-shadow-small padding-small bg-blue text-white"
							href="user_toLogin.html"><span class="icon-sign-in"></span> 登录
						</a> 
						</s:else>
				</div>
			</div>
		</div>
		<div class="text3D hidden-l"
			style="margin-left: 95px; margin-top: -50px;">
			SongM：<a href="#" target="_blank">一样的新闻，不一样的美！</a>
		</div>
	</div>
</div>
<script type="text/javascript">
	//搜索
	function search_() {
		layer.msg('加载中', {
			icon : 16,
			shade : 0.01
		});
	}
</script>