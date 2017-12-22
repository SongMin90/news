package com.songm.news.model;

import java.util.HashSet;
import java.util.Set;

public class Columns {

	private Integer columns_id;
	private String columns_name;
	private Integer columns_number;
	private Set<News> setNews = new HashSet<News>();
	
	public Columns() {
		super();
	}
	public Integer getColumns_id() {
		return columns_id;
	}
	public void setColumns_id(Integer columns_id) {
		this.columns_id = columns_id;
	}
	public String getColumns_name() {
		return columns_name;
	}
	public void setColumns_name(String columns_name) {
		this.columns_name = columns_name;
	}
	public Integer getColumns_number() {
		return columns_number;
	}
	public void setColumns_number(Integer columns_number) {
		this.columns_number = columns_number;
	}
	public Set<News> getSetNews() {
		return setNews;
	}
	public void setSetNews(Set<News> setNews) {
		this.setNews = setNews;
	}
	
}
