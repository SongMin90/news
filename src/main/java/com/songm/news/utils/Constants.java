package com.songm.news.utils;

import java.util.Map;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONObject;

/**
 * 常量
 * @author SongM
 *
 */
public class Constants {
	
	//crud
	public static final String TO_ADD = "toAdd";
	public static final String TO_EDIT = "toEdit";
	public static final String FIND_ALL = "findAll";
	//后台管理
	public static final String TO_MAIN = "toMain";	
	//ajax
	public static final String AJAX_CHECK = "ajax_check";	
	//errorPage
	public static final String TO_403 = "to403";
	public static final String TO_404 = "to404";
	//messages
	public static final String MESSAGES = "messages";
	//user
	public static final String TO_LOGIN = "toLogin";
	public static final String TO_REGISTER = "toRegister";
	public static final String TO_FINDPASSWORD = "toFpwd";
	public static final String TO_OVERVIEW = "toOverview";	
	//全路径
	public static final String PATH = ServletActionContext.getServletContext().getRealPath("/");
	//json
	public static String getJson(Map<String, Object> map) {
		JSONObject json = JSONObject.fromObject(map);
		return json.toString();
	}
	//系统配置
	public static final String TO_SYSTEM = "toSystem";
	public static final String SYSTEM_XML = ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/system";
	//页面编辑
	public static final String TO_PAGEEDIT = "toPageEdit";
	//分页每页显示的记录
	public static Integer getPageSize() {
		return Integer.parseInt((String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("pageSize"));
	}
	//网站标题
	public static String getWebSiteTitle() {
		return (String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("webSiteTitle");
	}
	//邮件HOST
	public static String getEmailHost() {
		return (String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("email_host");
	}
	//邮件发送的标题
	public static String getEmailTitle() {
		return (String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("email_title");
	}
	//邮件登陆名
	public static String getEmailName() {
		return (String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("email_name");
	}
	//邮件密码
	public static String getEmailPwd() {
		return (String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("email_pwd");
	}
	//cookie文件的路径
	public static final String COOKIE_PATH = ServletActionContext.getServletContext().getRealPath("/") + "WEB-INF/cookie";
	//cookie的记录时间
	public static Integer getCookieTime() {
		return Integer.parseInt((String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("cookieTime"));
	}
	/**
	 * 取到cookie
	 * @param key 要取的cookie键名
	 * @return 失败返回null
	 */
	public static String getCookie(String key) {
		String loginCookie = null;
        Cookie[] cookies = ServletActionContext.getRequest().getCookies();
        for(Cookie cookie : cookies) {
            if(cookie.getName().equals(key)) {
            	loginCookie = cookie.getValue();
            }
        }
		return loginCookie;
	}
	//before
	public static final String TO_INDEX = "toIndex";	
	public static final String TO_INFO = "toInfo";	
	//查看用户信息
	public static final String TO_USERINFO = "toUserInfo";	
	//搜索
	public static final String SEARCH_NEWS = "search_news";
	//前台搜索
	public static final String BEFORESEARCH_NEWS = "beforeSearchNews";
	//定时备份
	public static boolean PLAN() {
		String temp = (String) FileHelper.stringToMap(FileHelper.readUTF8(SYSTEM_XML)).get("planBackup");
		if("true".equals(temp)) {
			return true;
		}
		return false;
	}
	
}