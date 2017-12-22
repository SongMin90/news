<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/editormd.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 编辑新闻</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/news_update.html">
      <input type="hidden" name="news_id" value="${requestScope.news.news_id}">
      <input type="hidden" name="news_ctr" value="${requestScope.news.news_ctr}">
      <div class="form-group">
        <div class="label">
          <label for="sitename">新闻标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="news_title" size="50" placeholder="请输入标题" data-validate="required:请输入标题" value="${requestScope.news.news_title}" />         
        </div>
      </div>   
      <div class="form-group">
        <div class="label">
          <label>所属栏目：</label>
        </div>
	    <div class="field">
	   	  <input type="hidden" id="columns_id" value="${requestScope.news.columns.columns_id}">
          <select name="columns.columns_id" id="columns.columns_id" class="input w50">
          	<s:iterator value="allColumns" var="columns">
          		<option value="${columns_id}">${columns_name}</option>
			</s:iterator>
          </select>
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label>新闻编号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="news_number" size="50" placeholder="请输入编号" value="${requestScope.news.news_number}" />         
        </div>
      </div> 
      <div class="form-group">
        <div id="test-editormd">
	  		<textarea name="news_content_md" style="display:none;">${requestScope.news.news_content_md}</textarea>
	  		<input type="hidden" name="news_content_html" id="news_content_html">
		</div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" id="submit"> 提交</button>
        </div>
      </div>      
    </form>
  </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/editormd.min.js"></script>
<script type="text/javascript">
var testEditor;
$(function() {
    testEditor = editormd("test-editormd", {
        width   : "100%",
        height  : 640,
        saveHTMLToTextarea: true, // 保存 HTML 到 Textarea
        htmlDecode : "style,script,iframe|on*",	// 开启 HTML 标签解析，为了安全性，默认不开启
        emoji : true,
        syncScrolling : "single",
        path    : "lib/"
    });
});
$("#submit").bind('click', function() {
	document.getElementById("news_content_html").value = testEditor.getHTML();
});
//columns_id
document.getElementById("columns.columns_id").value = document.getElementById("columns_id").value;
</script>