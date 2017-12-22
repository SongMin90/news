package com.songm.news.service.impl;

import org.springframework.transaction.annotation.Transactional;

import com.songm.news.dao.BeforeDao;
import com.songm.news.model.News;
import com.songm.news.model.PageBean;
import com.songm.news.service.BeforeService;
import com.songm.news.utils.Constants;

@Transactional
public class BeforeServiceImpl implements BeforeService {

	private BeforeDao beforeDao;
	public void setBeforeDao(BeforeDao beforeDao) {
		this.beforeDao = beforeDao;
	}

	private PageBean<News> pageBean;
	public void setpageBean(PageBean<News> pageBean) {
		this.pageBean = pageBean;
	}
	
	public PageBean<News> findAllNews_ByColumns(Integer current_page, Integer columns_news_id) {
		Integer allCount = beforeDao.findAllCount_ByColumns(columns_news_id);//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(beforeDao.findAllNews_ByColumns(pageBean.getBegin(), pageBean.getPage_size(), columns_news_id));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

	public News findNews_Byid(Integer news_id) {	
		return beforeDao.findNews_Byid(news_id);
	}

	public PageBean<News> findAllNews_OrderBy(Integer current_page) {
		Integer allCount = beforeDao.findAllCount();//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(beforeDao.findAllNews_OrderBy(pageBean.getBegin(), pageBean.getPage_size()));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}
	
}
