<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"> </span>个人信息</strong></div>
  <div class="body-content">
    <form name="form" action="${pageContext.request.contextPath}/user_update.html" class="form-x" enctype="multipart/form-data" method="post" onsubmit="return check(this)">
		  <input type="hidden" name="user_id" id="user_id" value="${user.user_id}">
		  <div class="form-group">
	        <div class="label">
	          <label>头像：</label>
	        </div>
	        <div class="field">
	          <img id="img" style="float:left;cursor:pointer;" src="${user.images.images_name}" alt="无" width="60" height="60" onclick="document.form.upload.click()"/>
	          <input type="file" name="upload" id="upload" style="display:none;" accept="image/*" onchange="showImg(this)">
	          <input type="hidden" name="images.images_id" id="images.images_id" value="${user.images.images_id}">
	          <div class="tipss">图片需小于2M</div>
	        </div>
	      </div>
	      <div class="form-group">
	        <div class="label">
	          <label>昵称：</label>
	        </div>
	        <div class="field">
	          <input type="text" class="input w50" value="${user.user_name}" name="user_name" id="user_name" data-validate="required:请输入昵称,ajax#user_checkName.html?user_id=${user.user_id}&user_name=:昵称已经存在" />
	        </div>
	      </div>
	      <div class="form-group">
	        <div class="label">
	          <label>密码：</label>
	        </div>
	        <div class="field">
	          <input type="text" class="input w50" value="${user.user_password}" name="user_password" data-validate="required:请输入密码,length#<=20:字符长度小于20位" />
	        </div>
	      </div>       
	      <div class="form-group">
	        <div class="label">
	          <label>性别：</label>
	        </div>
	        <div class="field">
	          <select name="user_sex" class="input w50">
	          	<option value="${user.user_sex}">${user.user_sex}</option>
	            <option value="男">男</option>
	            <option value="女">女</option>
	            <option value="保密">保密</option>
	          </select>
	        </div>
	      </div>
		  <div class="form-group">
	        <div class="label">
	          <label>电话：</label>
	        </div>
	        <div class="field">
	          <input type="text" class="input w50" value="${user.user_phone}" name="user_phone" data-validate="tel:电话格式不正确" />
	        </div>
	      </div>
	      <div class="form-group">
	        <div class="label">
	          <label>邮箱：</label>
	        </div>
	        <div class="field">
	          <input type="text" class="input w50" value="${user.user_email}" name="user_email" id="user_email" data-validate="required:请输入邮箱,email:邮箱格式不正确,ajax#user_checkEmail.html?user_id=${user.user_id}&user_email=:邮箱已经存在" />
	        </div>
	      </div>
	      <div class="form-group">
	         <div class="label">
	           <label>注册时间：</label>
	         </div>
	         <div class="field" style="padding-top:8px;"> 
	         <input type="hidden" name="first_login" value="${user.first_login}"> 
	         ${user.first_login}     
	         </div>
	       </div>
	       <div class="form-group">
	         <div class="label">
	           <label>最后一次登录时间：</label>
	         </div>
	         <div class="field" style="padding-top:8px;"> 
	         <input type="hidden" name="last_login" value="${user.last_login}">
	         ${user.last_login}    
	         </div>
	       </div>
	       <div class="form-group">
	         <div class="label">
	           <label>当前状态：</label>
	         </div>
	         <div class="field" style="padding-top:8px;">
	            <input type="hidden" id="state" value="${user.user_state}">
	            <select name="user_state" id="user_state" class="input w50">      	
	          	  <option value="0">管理员</option>
	              <option value="1">普通用户</option>
	              <option value="2">禁言</option>
	              <option value="3">禁言禁发布</option>
	            </select>
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
<script type="text/javascript">
//验证图片大小
function check(form) {
	var f = document.getElementById("upload").files;
	if(f[0].size > 2*1024*1024) {
		alert("图片需小于2M!");
		document.getElementById("upload").value = "";//清空已选择的图片
		document.getElementById("img").src = "";//清空已显示的图片
		return false;
	} else {
		return true;
	}
}
//显示图片
function showImg(file) {
	document.getElementById("img").src = window.URL.createObjectURL(file.files[0]);
}
//state
document.getElementById("user_state").value = document.getElementById("state").value;
</script>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>