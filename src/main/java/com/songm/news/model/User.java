package com.songm.news.model;

import java.util.HashSet;
import java.util.Set;

public class User {

	private Integer user_id;
	private String user_name;
	private String user_password;
	private String user_sex;
	private String user_phone;
	private String user_email;
	private String first_login;
	private String last_login;
	private Integer user_state;
	private String login_ip;
	private Set<News> setNews = new HashSet<News>();
	private Set<Comment> setComment = new HashSet<Comment>();
	private Images images;	//用户头像
	
	public User() {
		super();
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer userId) {
		user_id = userId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String userPassword) {
		user_password = userPassword;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String userSex) {
		user_sex = userSex;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String userPhone) {
		user_phone = userPhone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String userEmail) {
		user_email = userEmail;
	}
	public String getFirst_login() {
		return first_login;
	}
	public void setFirst_login(String firstLogin) {
		first_login = firstLogin;
	}
	public String getLast_login() {
		return last_login;
	}
	public void setLast_login(String lastLogin) {
		last_login = lastLogin;
	}
	public Integer getUser_state() {
		return user_state;
	}
	public void setUser_state(Integer userState) {
		user_state = userState;
	}
	public Set<News> getSetNews() {
		return setNews;
	}
	public void setSetNews(Set<News> setNews) {
		this.setNews = setNews;
	}
	public Set<Comment> getSetComment() {
		return setComment;
	}
	public void setSetComment(Set<Comment> setComment) {
		this.setComment = setComment;
	}
	public Images getImages() {
		return images;
	}
	public void setImages(Images images) {
		this.images = images;
	}
	public String getLogin_ip() {
		return login_ip;
	}
	public void setLogin_ip(String login_ip) {
		this.login_ip = login_ip;
	}
	
}
