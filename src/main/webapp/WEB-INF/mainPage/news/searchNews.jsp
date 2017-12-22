<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
	<div class="panel-head">
		<strong><span class="icon-reorder"></span> 全部新闻</strong>
	</div>
	<div class="padding border-bottom">
		<ul class="search" style="padding-left: 10px;">
			<li><input type="text" placeholder="请输入搜索关键字" id="search_content"
				class="input"
				style="width: 250px; line-height: 17px; display: inline-block" value="${search_content}" /> <a
				href="javascript:void(0)" class="button border-main icon-search"
				onclick="return search_()"> 搜索</a></li>
		</ul>
	</div>
	<table class="table table-hover text-center">
		<tr>
			<th width="100" style="text-align: left; padding-left: 20px;">ID</th>
			<th>标题</th>
			<th>发布日期</th>
			<th>内容</th>
			<th>点击次数</th>
			<th>评论数</th>
			<th>编号</th>
			<th>所属栏目</th>
			<th width="310">操作</th>
		</tr>
		<s:iterator value="#pageBean.list" var="news">
			<tr>
				<td style="text-align: left; padding-left: 20px;"><input
					type="checkbox" name="id[]" value="${news_id}" /> ${news_id}</td>
				<td><s:if test="news_title.length()>15">
						<s:property value="news_title.substring(0,15)+'...'" />
					</s:if> <s:else>
						<s:property value="news_title" />
					</s:else></td>
				<td>${news_datetime}</td>
				<td><s:if test="news_content.length()>40">
						<s:property value="news_content.substring(0,40)+'...'" />
					</s:if> <s:else>
						<s:property value="news_content" />
					</s:else></td>
				<td>${news_ctr}</td>
				<td></td>
				<td>${news_number}</td>
				<td>${columns.columns_name}</td>
				<td><div class="button-group">
						<a class="button border-sub" href="javascript:void(0)"
							onclick="return open_('${news_id}')"><span
							class="icon-search-plus"></span> 查看</a> <a class="button border-main"
							href="javascript:void(0)" onclick="return edit('${news_id}')"><span
							class="icon-edit"></span> 编辑</a> <a class="button border-red"
							href="javascript:void(0)" onclick="return del('${news_id}')"><span
							class="icon-trash-o"></span> 删除</a>
					</div></td>
			</tr>
		</s:iterator>
		<tr>
			<td style="text-align: left; padding: 19px 0; padding-left: 20px;"><input
				type="checkbox" id="checkall" /> 全选</td>
			<td colspan="10" style="text-align: left; padding-left: 20px;"><a
				href="javascript:void(0)" class="button border-red icon-trash-o"
				style="padding: 5px 15px;"> 删除</a></td>
		</tr>
		<tr>
			<td colspan="11"><div class="pagelist">
					<s:if test="#pageBean.current_page != 1">
						<a
							href="${pageContext.request.contextPath}/news_searchNews.html?search_content=${search_content}&current_page=1">首页</a>
					</s:if>
					<s:if test="#pageBean.current_page > 1">
						<a
							href="${pageContext.request.contextPath}/news_searchNews.html?search_content=${search_content}&current_page=${pageBean.current_page-1}">上一页</a>
					</s:if>
					${pageBean.current_page}/${pageBean.total_page}
					<s:if test="#pageBean.current_page < #pageBean.total_page">
						<a
							href="${pageContext.request.contextPath}/news_searchNews.html?search_content=${search_content}&current_page=${pageBean.current_page+1}">下一页</a>
					</s:if>
					<s:if test="#pageBean.current_page != #pageBean.total_page">
						<a
							href="${pageContext.request.contextPath}/news_searchNews.html?search_content=${search_content}&current_page=${pageBean.total_page}">尾页</a>
					</s:if>
				</div></td>
		</tr>
	</table>
</div>

<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/layer/layer.js">
	layer.config({
		extend : [ 'skin/pintuer/style.css' ], //加载新皮肤
		skin : 'layer-ext-pintuer' //采用pintuer皮肤。
	});
</script>
<script type="text/javascript">
	//单条删除
	function del(id) {
		layer.confirm("确定要删除ID为" + id + "的这条数据吗?", {
			btn : [ '删除', '取消' ] //按钮
			,
			cancel : function() {

			},
			btn2 : function() {

			}
		}, function() {
			layer.msg('加载中', {
				icon : 16,
				shade : 0.01
			});
			var url = "news_delete.html";
			var args = {
				"news_id" : id,
				"time" : new Date()
			};
			$.post(url, args, function(data) {
				//表示可用
				if (data == "1") {
					alert("删除成功!");
					location.reload();
				} else if (data == "0") {
					alert("删除失败!");
					location.reload();
				}
				//服务器错误
				else {
					alert("出错!");
				}
			});
		});
	}
	//打开所在的新闻页面
	function open_(id) {
		layer.msg('加载中', {
			icon : 16,
			shade : 0.01
		});
		parent.location.href = 'info.html?news_id=' + id;
	}
	//单条修改
	function edit(id) {
		layer.msg('加载中', {
			icon : 16,
			shade : 0.01
		});
		window.location.href = 'news_toEdit.html?news_id=' + id;
	}
	//搜索
	function search_() {
		var search_content = document.getElementById("search_content").value;
		window.location.href='news_searchNews.html?search_content='+search_content;
	}
</script>