<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-plus"></span> 新增栏目</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/columns_addColumns.html">
      <div class="form-group">
        <div class="label">
          <label for="sitename">栏目名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="columns_name" size="50" placeholder="请输入新栏目" data-validate="required:请输入栏目名称,ajax#columns_checkName.html?columns_name=:栏目已经存在" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>栏目编号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="columns_number" size="50" placeholder="请输入编号" />         
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