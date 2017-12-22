package com.songm.news.model;

public class Images {

	private Integer images_id;
	private String images_title;
	private String images_name;
	private String images_datetime;
	private Integer images_classification;//0、系统图片 1、用户头像 2、新闻配图 3、用户上传的图片
	private User user;
	
	public Images() {
		super();
	}
	public Integer getImages_id() {
		return images_id;
	}
	public void setImages_id(Integer imagesId) {
		images_id = imagesId;
	}
	public String getImages_title() {
		return images_title;
	}
	public void setImages_title(String imagesTitle) {
		images_title = imagesTitle;
	}
	public String getImages_name() {
		return images_name;
	}
	public void setImages_name(String imagesName) {
		images_name = imagesName;
	}
	public String getImages_datetime() {
		return images_datetime;
	}
	public void setImages_datetime(String imagesDatetime) {
		images_datetime = imagesDatetime;
	}
	public Integer getImages_classification() {
		return images_classification;
	}
	public void setImages_classification(Integer images_classification) {
		this.images_classification = images_classification;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
