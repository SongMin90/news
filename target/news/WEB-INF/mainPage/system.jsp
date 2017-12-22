<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-cog"></span> 网站配置</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/system_update.html">
      <div class="form-group">
        <div class="label">
          <label for="sitename">网站标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="webSiteTitle" size="50" placeholder="请输入网站标题" data-validate="required:请输入网站标题" value="${requestScope.webSiteTitle}" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">分页每页显示大小：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="pageSize" size="50" placeholder="请输入值" data-validate="required:请输入值" value="${requestScope.pageSize}" />         
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

<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-database"></span> 数据库管理</strong></div>
  <div class="body-content">    
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/system_dataBaseBackup.html">
      <div class="form-group">
        <div class="label">
          <label for="sitename">数据库导出路径：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="exportDatabasePath" size="50" placeholder="请输入路径" data-validate="required:请输入路径" value="F:\" />         
        </div>
      </div>
      <div class="form-group">
      	<div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-save" type="submit"> 立即备份</button>   
        </div>
      </div>
    </form>
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/system_dataBaseImport.html"  enctype="multipart/form-data">
      <div class="form-group">
        <div class="label">
          <label for="sitename">数据库导入文件：</label>
        </div>
        <div class="field">
            <input type="file" class="input w50" name="upload" data-validate="required:请选择sql文件">       
        </div>
      </div>
      <div class="form-group">
      	<div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-upload" type="submit"> 立即导入</button>   
        </div>
      </div>  
    </form>
  </div>
</div>

<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-share-square-o"></span> 网站打包</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath}/system_compre.html">
      <div class="form-group">
        <div class="label">
          <label for="sitename">网站打包路径：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="webComprePath" size="50" placeholder="请输入路径" data-validate="required:请输入路径" value="F:\" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">网站打包名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="webCompreName" size="50" placeholder="请输入名字" data-validate="required:请输入名字" value="news" />         
        </div>
      </div>
      <div class="form-group">
      	<div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-download" type="submit"> 立即打包</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">

</script>