<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="xm9">
	<div class="box-shadow-small bg-white">
		<strong class="padding bg-blue text-white">新闻详情</strong>

		<div class="padding margin-top">

			<div class="line">
				<div class="x1 text-center">
					<div class="float-right text-center" style="cursor: pointer;"
						onclick="return seeUser('${news.user.user_name}')">
						<img src="${news.user.images.images_name}" width="64" height="64"
							class="img-border radius-circle bg-white margin-right"> <strong>${news.user.user_name}</strong>
					</div>
				</div>
				<div class="x11">
					<div class="popo">
						<div class="popo-left">
							<div class="popo-body popo-yellow left box-shadow">
								<strong>时间：${news.news_datetime}</strong>
								<p>浏览次数：${news.news_ctr}</p>

							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="alert padding-big border-none">
				<br /> <br /> <br />
				<h4 class="text-center">
					<strong>${news.news_title}</strong>
				</h4>
				<hr />
				<br /> ${news.news_content_html}

			</div>

			<br> <br>
			<div class="comment-post">
				<strong class="text-main comment-header">最新评论：</strong>
				<s:if test="#allComment == null">
					<div class="comment panel-body border-top text-small">
						<br>暂无评论<br>
					</div>
				</s:if>
				<s:iterator value="#allComment.list" var="comment">
					<div class="comment panel-body border-top text-small">
						<div class="comment-info">
							<b><a href="javascript:void(0)"
								onclick="return seeUser('${user.user_name}')">${user.user_name}</a>
							</b><span class="comment-time">${comment_datetime}</span>
							<div
								class="comment-content text-small padding-small-top height-small">${comment_content}</div>
						</div>
					</div>
				</s:iterator>
			</div>
			<s:if test="#allComment != null">
			<br>
			<ul class="pager pagination-small"> 
				<s:if test="#allComment.current_page != 1">
					<li><a href="info.html?news_id=${news.news_id}&current_page=1">首页</a> </li>
				</s:if>
				<s:if test="#allComment.current_page > 1">
					<li><a href="info.html?news_id=${news.news_id}&current_page=${allComment.current_page-1}">上一页</a> </li> 
				</s:if>
				<li>&nbsp;${allComment.current_page}/${allComment.total_page}&nbsp;</li>
				<s:if test="#allComment.current_page < #allComment.total_page">
					<li><a href="info.html?news_id=${news.news_id}&current_page=${allComment.current_page+1}">下一页</a> </li> 
				</s:if>
				<s:if test="#allComment.current_page != #allComment.total_page">
					<li><a href="info.html?news_id=${news.news_id}&current_page=${allComment.total_page}">尾页</a> </li>
				</s:if>
			</ul>
			</s:if>
			<br>
			<div class="comment-post">
				<strong class="text-main comment-header">发表评论：</strong>

				<form method="post"
					action="${pageContext.request.contextPath}/comment_addComment.html"
					onsubmit="return check()">
					<input type="hidden" name="news.news_id" value="${news.news_id}">
					<input type="hidden" name="user.user_id" id="user_id"
						value="${session.user.user_id}">
					<div class="form-group">
						<div class="field">
							<textarea class="input" name="comment_content" rows="2"
								tabindex="4" data-validate="required:请填写评论内容"
								placeholder="请填写评论内容"></textarea>
						</div>
					</div>
					<div class="form-group">
						<input class="button bg-yellow button-block" type="submit"
							value="立即发表" tabindex="6" />
					</div>
				</form>
			</div>

		</div>

	</div>
</div>
<script type="text/javascript">
	function check() {
		if (document.getElementById("user_id").value == "") {
			alert("请登录后操作！");
			return false;
		} else {
			return true;
		}
	}
</script>