<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"> </span>栏目信息</strong></div>
  <div class="body-content">
    <form action="${pageContext.request.contextPath}/columns_update.html" class="form-x" method="post">
		  <input type="hidden" name="columns_id" id="columns_id" value="${requestScope.columns.columns_id}">
	      <div class="form-group">
	        <div class="label">
	          <label>栏目名称：</label>
	        </div>
	        <div class="field">
	          <input type="text" class="input w50" name="columns_name" id="columns_name" data-validate="required:请输入栏目名称,ajax#columns_checkName.html?columns_id=${requestScope.columns.columns_id}&columns_name=:栏目已经存在" value="${requestScope.columns.columns_name}" />
	        </div>
	      </div>
	      <div class="form-group">
	        <div class="label">
	          <label>栏目编号：</label>
	        </div>
	        <div class="field">
	          <input type="text" class="input w50" name="columns_number" id="columns_number" value="${requestScope.columns.columns_number}" />
	        </div>
	      </div>
	      <div class="form-group">
	      	<div class="label">
	          <label></label>
	        </div>
	        <div class="field">
	          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
	        </div>
	      </div>
    </form>
  </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>