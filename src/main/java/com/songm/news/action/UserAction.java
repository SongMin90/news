package com.songm.news.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.songm.news.model.User;
import com.songm.news.model.PageBean;
import com.songm.news.service.NewsService;
import com.songm.news.service.UserService;
import com.songm.news.utils.Constants;
import com.songm.news.utils.Email;
import com.songm.news.utils.FileHelper;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1244411481993149374L;
	
	private User user = new User();
	public User getModel() {
		return user;
	}
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
    
    private Integer current_page;
	public void setCurrent_page(Integer current_page) {
		this.current_page = current_page;
	}
	
	private File upload;
	private String uploadFileName;
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	private NewsService newsService;
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	/**
	 * 页面跳转操作
	 */
	//跳转到login.jsp
	public String toLogin() {
		return Constants.TO_LOGIN;
	}
	//跳转到register.jsp
	public String toRegister() {
		return Constants.TO_REGISTER;
	}
	//跳转到fpwd.jsp
	public String toFpwd() {
		return Constants.TO_FINDPASSWORD;
	}
	//跳转到add.jsp
	public String toAdd() {
		return Constants.TO_ADD;
	}
	//跳转到edit.jsp
	public String toEdit() {
		user = userService.findById(user.getUser_id());
		ActionContext.getContext().put("user", user);
		return Constants.TO_EDIT;
	}
	//跳转到overview.jsp
	public String toOverview() {
		user = userService.findById(user.getUser_id());
		ActionContext.getContext().put("user", user);
		return Constants.TO_OVERVIEW;
	}
	//前台页面跳转到userInfo.jsp
	public String toUserInfo() throws UnsupportedEncodingException {
		String user_name = new String(user.getUser_name().getBytes("ISO-8859-1"),"UTF-8"); //因为是GET的取值，强制转换下解决中文无效
		user = userService.findByName(user_name);
		if(user != null) {
			Integer news_count = newsService.findNewsCount_ByUserId(user.getUser_id());
			ActionContext.getContext().put("user", user);
			ActionContext.getContext().put("news_count", news_count);
		}
		return Constants.TO_USERINFO;
	}
	
	/**
	 * ajax验证
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	//注册或更新检验昵称是否存在
	public String checkName() throws UnsupportedEncodingException {
		User u0 = userService.findByName(user.getUser_name());
		if(u0 == null || u0.getUser_id() == user.getUser_id() || u0.getUser_id().equals(user.getUser_id())) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));	
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//注册或更新检验邮箱是否存在
	public String checkEmail() throws UnsupportedEncodingException {
		User u1 = userService.findByEmail(user.getUser_email());
		if(u1 == null || u1.getUser_id() == user.getUser_id() || u1.getUser_id().equals(user.getUser_id())) {		
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));	
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//获取是否登录信息
	public String getLoginInfo() throws UnsupportedEncodingException {
		inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		String loginCookie = Constants.getCookie("loginCookie");
		String loginId = Constants.getCookie("loginId");
		if(loginCookie != null && loginId != null ) {
			String loginUser = (String) FileHelper.stringToMap(FileHelper.read(Constants.COOKIE_PATH)).get(loginId);
			if(loginUser != null && loginCookie.equals(loginUser)) {
				user = userService.findById(Integer.parseInt(loginId));
				if(user != null) {
					ActionContext.getContext().getSession().put("user", user); //将用户信息存入session
					ActionContext.getContext().getSession().put("user_images", user.getImages().getImages_name()); //将用户头像存入session
					inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
				}
			}
		}
		return Constants.AJAX_CHECK;
	}
	
	/**
	 * 普通用户操作
	 */
	//登录验证
	@SuppressWarnings("unchecked")
	public String login() {
		user = userService.loginCheck(user);
		if(user != null) {
			//登录信息存入cookie
			Cookie cookie = new Cookie("loginCookie", user.toString());
			Cookie cookie1 = new Cookie("loginId", String.valueOf(user.getUser_id()));
	        cookie.setMaxAge(Constants.getCookieTime());
	        cookie1.setMaxAge(Constants.getCookieTime());
	        ServletActionContext.getResponse().addCookie(cookie);
	        ServletActionContext.getResponse().addCookie(cookie1);
	        //cookie写入cookie文件
	        Map<Integer, User> map = FileHelper.stringToMap(FileHelper.readUTF8(Constants.COOKIE_PATH));
	        map.put(user.getUser_id(), user);
	        FileHelper.writeUTF8(Constants.COOKIE_PATH, map.toString());
	        //将user和用户头像存入seesion
			ActionContext.getContext().getSession().put("user", user);
			if(user.getImages() != null) {
				ActionContext.getContext().getSession().put("user_images", user.getImages().getImages_name());
			}
			return Constants.TO_MAIN;
		} else {
			messages[0] = "账号或密码错误";
			messages[1] = "user_toLogin.html";
			return Constants.MESSAGES;
		}
	}
	//用户注册
	public String register() {
		messages[0] = "注册失败";
		messages[1] = "user_toRegister.html";
		if("无".equals(user.getUser_phone()) && "无".equals(user.getLast_login())) {
			user.setUser_phone("");
			user.setLast_login("");
			if(userService.addUser(user) != null) {
				messages[0] = "注册成功";
				messages[1] = "user_toLogin.html";
			}
		}
		return Constants.MESSAGES;
	}
	//找回密码
	public String findPwd() {
		messages[0] = "邮件发送失败";
		messages[1] = "user_toFpwd.html";
		user = userService.findByEmail(user.getUser_email());
		if(user != null) {
			String mess = "username："+user.getUser_name()+"\n"+"password："+user.getUser_password();
			if(Email.send(user.getUser_email(), mess)) {
				messages[0] = "邮件发送成功";
				messages[1] = "user_toLogin.html";
			}	
		}
		return Constants.MESSAGES;
	}
	//退出登录
	public String Logout() {
		//清空cookie
		Cookie cookie = new Cookie("loginCookie", null);
        cookie.setMaxAge(0);
        ServletActionContext.getResponse().addCookie(cookie);
        //清空session
		ActionContext.getContext().getSession().clear();
		messages[0] = "退出成功";
		messages[1] = "index.html";
		return Constants.MESSAGES;
	}
	
	/**
	 * 管理员操作
	 */
	//分页查询所有user
	public String findAll() {
		if(current_page == null) {
			current_page = 1;
		}
		PageBean<User> pageBean = userService.userListPage(current_page);
		ActionContext.getContext().put("pageBean", pageBean);
		return Constants.FIND_ALL;
	}
	//新增管理员
	public String add() {
		messages[0] = "添加失败";
		messages[1] = "user_toAdd.html";
		if("无".equals(user.getUser_phone()) && "无".equals(user.getLast_login())) {
			user.setUser_phone("");
			user.setLast_login("");
			if(userService.addUser(user, true) != null) {
				messages[0] = "添加成功";
			}
		}
		return Constants.MESSAGES;
	}
	//单条删除
	public String delete() throws UnsupportedEncodingException {
		if(userService.deleteUserById(user.getUser_id())) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//单条更新
	public String update() throws IOException {
		boolean isUpdate = false;//表示是否更新成功
		messages[0] = "更新失败!";
		if(upload != null) {		
			if(userService.updateUser(user, uploadFileName, upload)) {
				isUpdate = true;
			}
		} else {
			if(user.getImages().getImages_id() == null) {
				user.setImages(null); //如果用户没头像，将images置null
			}
			if(userService.updateUser(user)) {
				isUpdate = true;
			}
		}
		if(isUpdate) {
			messages[0] = "更新成功!";
		}
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新
		return Constants.MESSAGES;
	}
	
}
