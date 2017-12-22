<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
	<div class="panel-head">
		<strong><span class="icon-pencil-square-o"> </span>页面编辑</strong>
	</div>
	<div class="padding border-bottom">
		<form id="pageName" method="post" class="form-x"
			action="${pageContext.request.contextPath}/system_toPageEdit.html">
			<div class="field">
				<select name="pagePath" id="pagePath" class="input w50">
					<option value="WEB-INF/mainPage/pageEdit.jsp">此界面</option>
					<option value="WEB-INF/errorPage/403.jsp">403页面</option>
					<option value="WEB-INF/errorPage/404.jsp">404页面</option>
					<option value="WEB-INF/errorPage/500.jsp">500页面</option>
                    <option value="WEB-INF/mainPage/main.jsp">后台管理中心</option>
                    <option value="WEB-INF/index.jsp">前台首页</option>
                    <option value="WEB-INF/classes/struts.xml">struts配置文件</option>
                    <option value="../resources/struts.xml">struts配置文件(eclipse)</option>
                    <option value="WEB-INF/mainPage/system.jsp">更多配置页面</option>
<option value="WEB-INF/header.jsp">前台header页面</option>
<option value="WEB-INF/bottom.jsp">前台bottom页面</option>
<option value="WEB-INF/mainPage/user/edit.jsp">用户编辑页面</option>
				</select>
			</div> 
			<a href="javascript:void(0)" class="button border-blue icon-search-plus" onclick="document.getElementById('pageName').submit();"> 读取内容</a>
		</form>
	</div>
	<div class="body-content">
		<form method="post" class="form-x"
			action="${pageContext.request.contextPath}/system_pageEdit.html">
			<input type="hidden" name="pagePath" id="pagePath1" value="${requestScope.pagePath}">
			<div class="form-group">
				<div class="field">
					<textarea class="input" rows="30" cols="50" name="pageContent"
						placeholder="请填写页面内容" data-validate="required:请填写页面内容">${requestScope.pageContent}</textarea>
				</div>
			</div>
			<div class="form-button">
				<button class="button bg-main icon-check-square-o" type="submit">提交</button>
			</div>
		</form>
	</div>
</div>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">
	document.getElementById("pagePath").value = document.getElementById("pagePath1").value;
</script>