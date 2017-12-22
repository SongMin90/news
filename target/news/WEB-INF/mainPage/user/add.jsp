<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-plus"></span> 新增管理员</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/user_add.html">
      <div class="form-group">
        <div class="label">
          <label for="sitename">账号昵称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="user_name" size="50" placeholder="请输入新昵称" data-validate="required:请输入新昵称,ajax#user_checkName.html?user_name=:昵称已经存在" />         
        </div>
      </div>   
      <div class="form-group">
        <div class="label">
          <label for="sitename">新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="user_password" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="user_password1" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#user_password:两次输入的密码不一致" />          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">邮箱：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="user_email" name="user_email" size="50" placeholder="请输入你的邮箱" data-validate="required:请填写邮箱,email:邮箱格式不正确,ajax#user_checkEmail.html?user_email=:邮箱已经存在" />       
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