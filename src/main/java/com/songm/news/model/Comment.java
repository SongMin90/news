package com.songm.news.model;

public class Comment {

	private Integer comment_id;
	private String comment_content;
	private String comment_datetime;
	private News news;
	private User user;
	
	public Comment() {
		super();
	}
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer commentId) {
		comment_id = commentId;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String commentContent) {
		comment_content = commentContent;
	}
	public String getComment_datetime() {
		return comment_datetime;
	}
	public void setComment_datetime(String commentDatetime) {
		comment_datetime = commentDatetime;
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
