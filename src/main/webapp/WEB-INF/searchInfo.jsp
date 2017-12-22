<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="xm9">
	<div class="box-shadow-small bg-white">
		<strong class="padding bg-blue text-white">${requestScope.columns_name}新闻</strong>
		<div class="padding">
			<s:iterator value="#pageBean.list" var="news">
				<div class="line margin-top">
					<a href="info.html?news_id=${news_id}">
						<div class="alert border-none">
							<strong> ${news_title}</strong>
							<p>
								<s:if test="news_content.length()>400">
									<s:property value="news_content.substring(0,400)+'...'" />
								</s:if>
								<s:else>
									<s:property value="news_content" />
								</s:else>
							</p>
							<div class="text-right">
								<b class="button button-small bg-green">阅读</b>
							</div>
						</div>
					</a>
				</div>
				<div class="hr"></div>
			</s:iterator>

			<div class="text-right padding">
				<ul class="pagination pagination-group">
					<s:if test="#pageBean.current_page > 1">
						<li><a
							href='news_beforeSearchNews.html?current_page=${pageBean.current_page-1}&search_content=${search_content}'>上一页</a></li>
					</s:if>
					<s:if test="#pageBean.current_page < #pageBean.total_page">
						<li><a
							href='news_beforeSearchNews.html?current_page=${pageBean.current_page+1}&search_content=${search_content}'>下一页</a></li>
					</s:if>
				</ul>
			</div>

		</div>
	</div>
</div>