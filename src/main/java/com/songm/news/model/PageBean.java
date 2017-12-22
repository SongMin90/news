package com.songm.news.model;

import java.util.List;

/**
 * 表分页的实体类
 * @author SongM
 * @param <T>
 *
 */
public class PageBean<T> {

	private Integer current_page;  //当前页
	private Integer total_page;  //总页数
	private Integer page_size;  //每页显示记录数
	private Integer total_count;  //总记录数
	private Integer begin;  //开始位置
	private List<T> list;  //每页记录的list集合
	
	public PageBean() {
		super();
	}
	public Integer getCurrent_page() {
		return current_page;
	}
	public void setCurrent_page(Integer current_page) {
		this.current_page = current_page;
	}
	public Integer getTotal_page() {
		return total_page;
	}
	public void setTotal_page(Integer total_page) {
		this.total_page = total_page;
	}
	public Integer getPage_size() {
		return page_size;
	}
	public void setPage_size(Integer page_size) {
		this.page_size = page_size;
	}
	public Integer getTotal_count() {
		return total_count;
	}
	public void setTotal_count(Integer total_count) {
		this.total_count = total_count;
	}
	public Integer getBegin() {
		return begin;
	}
	public void setBegin(Integer begin) {
		this.begin = begin;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
}
