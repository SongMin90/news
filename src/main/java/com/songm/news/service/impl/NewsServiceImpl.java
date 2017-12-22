package com.songm.news.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.songm.news.dao.NewsDao;
import com.songm.news.model.News;
import com.songm.news.model.PageBean;
import com.songm.news.service.NewsService;
import com.songm.news.utils.Constants;
import com.songm.news.utils.DateTime;

@Transactional
public class NewsServiceImpl implements NewsService {

	private NewsDao newsDao;
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	private PageBean<News> pageBean;
	public void setpageBean(PageBean<News> pageBean) {
		this.pageBean = pageBean;
	}

	public Integer addNews(News news) {
		news.setNews_content(news.getNews_content_html().replaceAll("\\<.*?>", "").replaceAll(" ", ""));//去除所有html标签，并去除所有空格
		news.setNews_ctr(0);
		news.setNews_datetime(DateTime.get1());
		return newsDao.save(news);
	}

	public List<News> findAllNews() {
		return newsDao.findAll();
	}

	public PageBean<News> newsListPage(Integer current_page) {
		Integer allCount = newsDao.findAllCount();//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(newsDao.findPage(pageBean.getBegin(), pageBean.getPage_size()));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

	public boolean deleteNews(News news) {
		return newsDao.delete(news);
	}

	public News findById(Integer news_id) {
		return newsDao.findById(news_id);
	}

	public boolean updateNews(News news) {
		news.setNews_content(news.getNews_content_html().replaceAll("\\<.*?>", "").replaceAll(" ", ""));//去除所有html标签，并去除所有空格
		news.setNews_datetime(DateTime.get1());
		return newsDao.update(news);
	}

	public PageBean<News> newsListPage_ByUserId(Integer current_page, Integer user_news_id) {
		Integer allCount = newsDao.findAllCount_ByUserId(user_news_id);//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(newsDao.findPage_ByUserId(pageBean.getBegin(), pageBean.getPage_size(), user_news_id));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

	public Integer findNewsCount_ByUserId(Integer user_news_id) {
		return newsDao.findAllCount_ByUserId(user_news_id);
	}

	public PageBean<News> searchNews(Integer current_page, String search_content) {
		Integer allCount = newsDao.searchNewsCount(search_content);//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(100);  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(newsDao.searchNews(pageBean.getBegin(), pageBean.getPage_size(), search_content));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

	@Override
	public boolean delAllNews(List<News> list) {		
		return newsDao.batchDelete(list);
	}

}
