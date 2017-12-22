package com.songm.news.action;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.songm.news.utils.Constants;
import com.songm.news.utils.DateTime;
import com.songm.news.utils.FileHelper;
import com.songm.news.utils.MySQLDatabase;
import com.songm.news.utils.PlanBackup;
import com.songm.news.utils.VCLZIP;

public class SystemAction extends ActionSupport {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5231988508516260039L;
	
	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	private Integer pageSize;
	private String webSiteTitle;
	private Integer cookieTime;
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public void setWebSiteTitle(String webSiteTitle) {
		this.webSiteTitle = webSiteTitle;
	}
	public void setCookieTime(Integer cookieTime) {
		this.cookieTime = cookieTime;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public String getWebSiteTitle() {
		return webSiteTitle;
	}
	public Integer getCookieTime() {
		return cookieTime;
	}
	
	//跳转到system.jsp
	public String toSystem() {
		pageSize = Constants.getPageSize();
		webSiteTitle = Constants.getWebSiteTitle();
		cookieTime = Constants.getCookieTime();
		email_host = Constants.getEmailHost();
		email_title = Constants.getEmailTitle();
		email_name = Constants.getEmailName();
		email_pwd = Constants.getEmailPwd();
		return Constants.TO_SYSTEM;
	}
	
	//更新网站设置
	@SuppressWarnings("unchecked")
	public String update() {
		Map<String, Object> map = FileHelper.stringToMap(FileHelper.readUTF8(Constants.SYSTEM_XML));
		map.put("pageSize", pageSize);
		map.put("webSiteTitle", webSiteTitle);
		map.put("cookieTime", cookieTime);
		if(FileHelper.writeUTF8(Constants.SYSTEM_XML, map.toString())) {
			messages[0] = "修改成功";
		} else {
			messages[0] = "修改失败";
		}
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新
		ActionContext.getContext().getSession().put("webSiteTitle", webSiteTitle); //将新的网站标题存入session
		return Constants.MESSAGES;
	}
	//备份数据库
	private String exportDatabasePath;
	public void setExportDatabasePath(String exportDatabasePath) {
		this.exportDatabasePath = exportDatabasePath;
	}
	public String dataBaseBackup() throws InterruptedException {
		messages[0] = "导出失败";
		messages[1] = "javascript:history.go(-1);";//返回上一个页面，并刷新
		String ip = "127.0.0.1";
		String name = "root";
		String pwd = "sa";
		String path = exportDatabasePath;
		String saveName = DateTime.get_US() + ".sql";
		String databaseName = "news";
		if(new MySQLDatabase().exportDatabaseTool(ip, name, pwd, path, saveName, databaseName)) {
			messages[0] = "导出成功";
		}
		return Constants.MESSAGES;
	}
	//导入sql文件
	private File upload;
	private String uploadFileName;
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String dataBaseImport() {
		messages[0] = "导入失败";
		messages[1] = "javascript:history.go(-1);";//返回上一个页面
		String ip = "127.0.0.1";
		String databaseName = "news";
		String name = "root";
		String pwd = "sa";
		String path = Constants.PATH + uploadFileName;
		try {
			FileUtils.copyFile(upload, new File(path));
			if(new MySQLDatabase().dataBaseImport(ip, databaseName, name, pwd, path)) {
				messages[0] = "导入成功";
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			File file1 = new File(path);
			if(file1.exists()) {
				FileUtils.deleteQuietly(file1);
			}
		}
		return Constants.MESSAGES;
	}
	//打包网站
	private String webComprePath;
	private String webCompreName;
	private String webCompreFormat;
	public void setWebComprePath(String webComprePath) {
		this.webComprePath = webComprePath;
	}
	public void setWebCompreName(String webCompreName) {
		this.webCompreName = webCompreName;
	}
	public void setWebCompreFormat(String webCompreFormat) {
		this.webCompreFormat = webCompreFormat;
	}
	public String compre() {
		messages[0] = "打包失败";
		messages[1] = "javascript:history.go(-1);";//返回上一个页面，并刷新
		if(VCLZIP.zip(Constants.PATH, webComprePath+webCompreName+"."+webCompreFormat)) {
			messages[0] = "打包成功";
		}
		return Constants.MESSAGES;
	}
	//邮件管理
	private String email_host;
	private String email_title;
	private String email_name;
	private String email_pwd;
	public String getEmail_host() {
		return email_host;
	}
	public void setEmail_host(String email_host) {
		this.email_host = email_host;
	}
	public String getEmail_title() {
		return email_title;
	}
	public void setEmail_title(String email_title) {
		this.email_title = email_title;
	}
	public String getEmail_name() {
		return email_name;
	}
	public void setEmail_name(String email_name) {
		this.email_name = email_name;
	}
	public String getEmail_pwd() {
		return email_pwd;
	}
	public void setEmail_pwd(String email_pwd) {
		this.email_pwd = email_pwd;
	}
	@SuppressWarnings("unchecked")
	public String emailUpdate() {
		Map<String, Object> map = FileHelper.stringToMap(FileHelper.readUTF8(Constants.SYSTEM_XML));
		map.put("email_host", email_host);
		map.put("email_title", email_title);
		map.put("email_name", email_name);
		map.put("email_pwd", email_pwd);
		if(FileHelper.writeUTF8(Constants.SYSTEM_XML, map.toString())) {
			messages[0] = "修改成功";
		} else {
			messages[0] = "修改失败";
		}
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新		
		return Constants.MESSAGES;
	}
	
	//跳转到pageEdit.jsp
	private String pageContent;
	private String pagePath;
	public String getPageContent() {
		return pageContent;
	}
	public void setPageContent(String pageContent) {
		this.pageContent = pageContent;
	}
	public String getPagePath() {
		return pagePath;
	}
	public void setPagePath(String pagePath) {
		this.pagePath = pagePath;
	}
	//页面编辑
	public String toPageEdit() {
		if(pagePath == null) {
			pagePath = "WEB-INF/mainPage/pageEdit.jsp";
		}
		pageContent = FileHelper.readUTF8(Constants.PATH + pagePath).replace("<", "&lt;" + "").replace(">", "&gt;" + "");//替换字符串中的"<",">"为"& lt;","&gt;"
		return Constants.TO_PAGEEDIT;
	}
	public String pageEdit() {
		pageContent = pageContent.replace("&lt;", "<" + "").replace("&gt;", ">" + "");//替换字符串中"& lt;","&gt;"的为"<",">"
		if(FileHelper.writeUTF8(Constants.PATH + pagePath, pageContent)) {
			messages[0] = "修改成功";
		} else {
			messages[0] = "修改失败";
		}
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新		
		return Constants.MESSAGES;
	}
	//网站升级
	private String web_runFile;
	public void setWeb_runFile(String web_runFile) {
		this.web_runFile = web_runFile;
	}
	public String webUpdate() {
		messages[0] = "升级失败";
		messages[1] = "javascript:history.go(-1);";//返回上一个页面
		if(upload != null && web_runFile != null) {
			FileUtils.deleteQuietly(new File(web_runFile));
			try {
				FileUtils.copyFile(upload, new File(web_runFile));
				messages[0] = "升级成功";
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return Constants.MESSAGES;
	}
	//数据库定时备份
	private String planBackupPath;
	private int planBackupTime;
	public void setPlanBackupPath(String planBackupPath) {
		this.planBackupPath = planBackupPath;
	}
	public void setPlanBackupTime(int planBackupTime) {
		this.planBackupTime = planBackupTime;
	}
	@SuppressWarnings("unchecked")
	public String planStart() {
		messages[0] = "开启失败！";
		messages[1] = "javascript:history.go(-1);";//返回上一个页面
		try {
			Map<String, Object> map = FileHelper.stringToMap(FileHelper.readUTF8(Constants.SYSTEM_XML));
			if("true".equals(map.get("planBackup"))) {
				messages[0] = "已经开启定时备份！";
			} else {
				map.put("planBackup", "true");
				if(FileHelper.writeUTF8(Constants.SYSTEM_XML, map.toString())) {
					Runnable runnable = new PlanBackup(planBackupPath, planBackupTime);
					Thread thread = new Thread(runnable);
					thread.start();
					messages[0] = "开启成功！";
				}
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return Constants.MESSAGES;
	}
	@SuppressWarnings("unchecked")
	public String planStop() {
		messages[0] = "停用失败！";
		messages[1] = "javascript:history.go(-1);";//返回上一个页面
		try {
			Map<String, Object> map = FileHelper.stringToMap(FileHelper.readUTF8(Constants.SYSTEM_XML));
			if("false".equals(map.get("planBackup"))) {
				messages[0] = "还没开启呢！";
			} else {
				map.put("planBackup", "false");
				if(FileHelper.writeUTF8(Constants.SYSTEM_XML, map.toString())) {
					messages[0] = "停用成功！";
				}
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return Constants.MESSAGES;
	}
	
}
