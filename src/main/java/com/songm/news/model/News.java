package com.songm.news.model;

import java.util.HashSet;
import java.util.Set;

public class News {

	private Integer news_id;
	private String news_title;
	private String news_datetime;
	private String news_content;
	private String news_content_md;
	private String news_content_html;
	private Integer news_ctr;
	private Integer news_number;
	private User user;
	private Set<Comment> setComment = new HashSet<Comment>();
	private Columns columns;
	
	public News() {
		super();
	}
	public Integer getNews_id() {
		return news_id;
	}
	public void setNews_id(Integer newsId) {
		news_id = newsId;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String newsTitle) {
		news_title = newsTitle;
	}
	public String getNews_datetime() {
		return news_datetime;
	}
	public void setNews_datetime(String newsDatetime) {
		news_datetime = newsDatetime;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String newsContent) {
		news_content = newsContent;
	}
	public Integer getNews_ctr() {
		return news_ctr;
	}
	public void setNews_ctr(Integer newsCtr) {
		news_ctr = newsCtr;
	}
	public Integer getNews_number() {
		return news_number;
	}
	public void setNews_number(Integer newsNumber) {
		news_number = newsNumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set<Comment> getSetComment() {
		return setComment;
	}
	public void setSetComment(Set<Comment> setComment) {
		this.setComment = setComment;
	}
	public Columns getColumns() {
		return columns;
	}
	public void setColumns(Columns columns) {
		this.columns = columns;
	}
	public String getNews_content_md() {
		return news_content_md;
	}
	public void setNews_content_md(String news_content_md) {
		this.news_content_md = news_content_md;
	}
	public String getNews_content_html() {
		return news_content_html;
	}
	public void setNews_content_html(String news_content_html) {
		this.news_content_html = news_content_html;
	}
	
}
