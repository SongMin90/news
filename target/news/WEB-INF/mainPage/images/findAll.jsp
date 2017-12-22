<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-reorder"></span> 系统图片</strong></div>
  <div class="padding border-bottom">
  	<form name="form" action="${pageContext.request.contextPath}/images_upload.html" class="form-x" enctype="multipart/form-data" method="post">
	    <img id="img" style="float:left;cursor:pointer;" src="" alt="本地浏览" width="85" height="42" onclick="document.form.upload.click()"/>
	    <input type="file" name="upload" id="upload" accept="image/*" style="display:none;" onchange="showImg(this)">
	    <a href="javascript:void(0)" class="button border-main" onclick="return upload(this)"> 上传图片</a>
	    <a href="javascript:void(0)" class="button border-main dialogs" data-url="${pageContext.request.contextPath}/images_toEdit.html?images_id=&images_classification=3" data-toggle="click" data-target="#edit" data-mask="1" data-width="73%"> 删除图片</a>
	    <a href="javascript:void(0)" class="button border-main dialogs" data-url="${pageContext.request.contextPath}/images_toEdit.html?images_id=&images_classification=2" data-toggle="click" data-target="#edit" data-mask="1" data-width="73%"> 新闻配图</a>
    </form>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="100" style="text-align:left; padding-left:20px;">ID</th>
      <th>图片</th>
      <th>标题</th>
      <th>日期</th>
      <th>所属</th>
      <th width="310">操作</th>
    </tr>
    <s:iterator value="allImages">
      <tr>
        <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="${images_id}" />
        	${images_id}</td>
        <td><img src="${images_name}" alt="无" width="50" height="50" /></td>
        <td>${images_title}</td>
        <td>${images_datetime}</td>
        <s:if test="images_classification == 0"><td>系统图片</td></s:if>
        <s:elseif test="images_classification == 1"><td>用户头像</td></s:elseif>
        <s:elseif test="images_classification == 2"><td>新闻配图</td></s:elseif>
        <td><div class="button-group"> <a class="button border-main dialogs" data-url="${pageContext.request.contextPath}/images_toEdit.html?images_id=${images_id}&images_classification=3" data-toggle="click" data-target="#edit" data-mask="1" data-width="73%" href="javascript:void(0)" ><span class="icon-edit"></span> 更换</a> </div></td>
      </tr>
    </s:iterator>
  </table>
</div>

<!-- 修改操作对话框 -->
<div id="edit">
	<div class="dialog"></div>
</div>

<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/dialog.js"></script>
<script type="text/javascript">
//验证图片大小
function upload(form) {
	var f = document.getElementById("upload").files;
	if(document.getElementById("upload").value == "") {
		alert("没有图片！");
		return false;
	}
	if(f[0].size > 2*1024*1024) {
		alert("图片需小于2M！");
		document.getElementById("upload").value = "";//清空已选择的图片
		document.getElementById("img").src = "";//清空已显示的图片
	} else {
		document.form.submit();
	}
}
//显示图片
function showImg(file) {
	document.getElementById("img").src = window.URL.createObjectURL(file.files[0]);
}
</script>