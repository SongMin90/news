<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="tab">
	<div class="tab-head">
		<ul class="tab-nav">
			<li class="active"><a href="#tab-set">网站设置</a></li>
			<li><a href="#tab-web">网站导出</a></li>
			<li><a href="#tab-database">数据库管理</a></li>
			<li><a href="#tab-email">邮件设置</a></li>
			<li><a href="#tab-visit">访问限制</a></li>
			<li><a href="#web-update">网站升级</a></li>
			<li><a href="#web-plan">定时备份</a></li>
		</ul>
	</div>
	<div class="tab-body">
		<br />
		<!-- set -->
		<div class="tab-panel active" id="tab-set">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_update.html">
				<div class="form-group">
					<div class="label">
						<label>网站维护状态：</label>
					</div>
					<div class="field">
						<div class="button-group button-group-small radio">
							<label class="button active"> <input name="pintuer"
								value="yes" checked="checked" type="radio"><span
								class="icon icon-check"></span> 开启
							</label> <label class="button"> <input name="pintuer" value="no"
								type="radio"><span class="icon icon-times"></span> 关闭
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>维护说明：</label>
					</div>
					<div class="field">
						<textarea class="input w50" rows="5" cols="50"
							placeholder="请填写维护说明"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="webSiteTitle" size="50"
							placeholder="请填写你的网站标题" data-validate="required:请填写你网站的标题"
							value="${requestScope.webSiteTitle}" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>分页每页显示大小：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="pageSize" size="50"
							placeholder="请填写分页每页显示大小" data-validate="required:请填写分页每页显示大小"
							value="${requestScope.pageSize}" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>Cookie保存时间(秒)：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="cookieTime" size="50"
							placeholder="请填写Cookie保存时间"
							data-validate="required:请填写Cookie保存时间"
							value="${requestScope.cookieTime}" />
					</div>
				</div>
				<div class="form-button">
					<button class="button bg-main icon-check-square-o" type="submit">提交</button>
				</div>
			</form>
		</div>
		<!-- web -->
		<div class="tab-panel" id="tab-web">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_compre.html">
				<div class="form-group">
					<div class="label">
						<label>网站打包路径：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="webComprePath"
							size="50" placeholder="请输入路径" data-validate="required:请输入路径"
							value="F:\" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站打包名：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="webCompreName"
							size="50" placeholder="请输入名字" data-validate="required:请输入名字"
							value="news" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>打包的格式：</label>
					</div>
					<div class="field">
						<select name="webCompreFormat" class="input w50">
							<option value="war">war</option>
							<option value="rar">rar</option>
							<option value="zip">zip</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-download" type="submit">
							立即打包</button>
					</div>
				</div>
			</form>
		</div>
		<!-- database -->
		<div class="tab-panel" id="tab-database">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_dataBaseBackup.html">
				<div class="form-group">
					<div class="label">
						<label>数据库导出路径：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="exportDatabasePath"
							size="50" placeholder="请输入路径" data-validate="required:请输入路径"
							value="F:\" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-save" type="submit">
							立即导出</button>
					</div>
				</div>
			</form>
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_dataBaseImport.html"
				enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>数据库导入文件：</label>
					</div>
					<div class="field">
						<input type="file" class="input w50" name="upload"
							data-validate="required:请选择sql文件">
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-upload" type="submit">
							立即导入</button>
					</div>
				</div>
			</form>
		</div>
		<!-- 邮件设置 -->
		<div class="tab-panel" id="tab-email">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_emailUpdate.html">
				<div class="form-group">
					<div class="label">
						<label>邮件HOST：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="email_host"
							size="50" placeholder="请输入邮件Host" data-validate="required:请输入邮件HOST"
							value="${requestScope.email_host}" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>邮件发送的标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="email_title"
							size="50" placeholder="请填写邮件发送的标题" data-validate="required:请填写邮件发送的标题"
							value="${requestScope.email_title}" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>登陆名：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="email_name"
							size="50" placeholder="请输入登陆名" data-validate="required:请输入登陆名"
							value="${requestScope.email_name}" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" name="email_pwd"
							size="50" placeholder="请输入密码" data-validate="required:请输入密码"
							value="${requestScope.email_pwd}" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">提交</button>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-panel" id="tab-visit">还在开发</div>
		<div class="tab-panel" id="web-update">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_webUpdate.html"
				enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>选择本地war包：</label>
					</div>
					<div class="field">
						<input type="file" class="input w50" id="upload" name="upload"
							data-validate="required:请选择war文件">
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站运行包：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="web_runFile" name="web_runFile"
							size="50" placeholder="请输入网站运行包" data-validate="required:请输入网站运行包"
							value="/usr/tomcat7/webapps/ROOT.war" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-upload" type="submit" onclick="return load()">
							立即升级</button>
					</div>
				</div>
			</form>
		</div>
		<!-- 定时备份 -->
		<div class="tab-panel" id="web-plan">
			<form method="post" class="form-x"
				action="${pageContext.request.contextPath}/system_planStart.html">
				<div class="form-group">
					<div class="label">
						<label>数据库备份路径：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="planBackupPath"
							size="50" placeholder="请输入路径" data-validate="required:请输入路径"
							value="/usr/news/database_backup/" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>备份定时(分钟)：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="planBackupTime"
							size="50" placeholder="请输入时间" data-validate="required:请输入时间"
							value="1440" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-play" type="submit"> 启动</button>
						<button class="button bg-red icon-stop" type="button" onclick="return planStop()"> 停用</button>
					</div>
				</div>
			</form>
		</div>
	</div>
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
	function load() {
		layer.msg('加载中', {
			icon : 16,
			shade : 0.01
		});
	}
	function planStop() {
		window.location.href="system_planStop.html";
	}
</script>