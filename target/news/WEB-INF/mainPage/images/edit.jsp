<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"> </span>选择图片</strong></div>
  <div class="body-content">
  	<s:if test="images_id != null">
	  <input type="hidden" name="images_id" id="images_id" value="${images_id}">
	  <s:iterator value="allImages">
	  	<img src="${images_name}" alt="无" width="172" height="120" style="cursor:pointer;" onclick="return change('${images_name}')" />
	  </s:iterator>
	</s:if>
	<s:else>
	  <s:iterator value="allImages">
	  	<img id="${images_id}" src="${images_name}" alt="无" width="172" height="120" style="cursor:pointer;" onclick="return del('${images_id}')" />
	  </s:iterator>
	</s:else>
  </div>
</div>
<script type="text/javascript">
function change(images_name) {
	var flag = confirm("确定要更换为此图片吗?");
	if(flag) {
    	var url = "images_update.html";
        var args = {
            "images_id" : document.getElementById("images_id").value,
            "images_name" : images_name,
            "time" : new Date()
        };
        $.post(url, args, function(data) {
            //表示可用
            if (data == "1") {
            	alert("图片更换成功!");
            	parent.location.reload();//刷新父页面
            }
            //不可用
            else if (data == "0") {
            	alert("图片修改失败!");
            }
            //服务器错误
            else {
            	alert("出错!");
            }
        });
	}
}
function del(images_id) {
	var flag = confirm("确定要删除此图片吗?");
	if(flag) {
    	var url = "images_delete.html";
        var args = {
            "images_id" : images_id,
            "time" : new Date()
        };
        $.post(url, args, function(data) {
            //表示可用
            if (data == "1") {
            	alert("图片删除成功!");
            	$('#'+images_id).remove();;//刷新页面
            }
            //不可用
            else if (data == "0") {
            	alert("图片删除失败!");
            }
            //服务器错误
            else {
            	alert("出错!");
            }
        });
	}
}
</script>