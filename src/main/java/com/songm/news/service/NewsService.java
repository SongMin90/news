package com.songm.news.service;

import java.util.List;

import com.songm.news.model.News;
import com.songm.news.model.PageBean;

public interface NewsService {

	/**
	 * 添加新闻，返回其news_id，失败返回null
	 * @param news
	 * @return
	 */
	public Integer addNews(News news);

	/**
	 * 取出全部新闻，没有或失败返回null
	 * @return
	 */
	public List<News> findAllNews();

	/**
	 * 分页取出全部新闻，没有或失败返回null
	 * @param current_page
	 * @return
	 */
	public PageBean<News> newsListPage(Integer current_page);

	/**
	 * 单条删除新闻，返回true或false
	 * @param news
	 */
	public boolean deleteNews(News news);

	/**
	 * 通过news_id查询，失败返回null
	 * @param news_id
	 * @return
	 */
	public News findById(Integer news_id);

	/**
	 * 更新新闻，成功返回true，失败返回false
	 * @param news
	 * @return
	 */
	public boolean updateNews(News news);

	/**
	 * 通过user_news_id分页取出全部新闻，没有或失败返回null
	 * @param current_page
	 * @param user_comment_id
	 * @return
	 */
	public PageBean<News> newsListPage_ByUserId(Integer current_page, Integer user_news_id);
	
	/**
	 * 通过user_news_id取出新闻纪录数，失败返回null
	 * @return
	 */
	public Integer findNewsCount_ByUserId(Integer user_news_id);

	/**
	 * 分页搜索查询，失败返回null
	 * @param current_page 开始页
	 * @param search_content 搜索的内容
	 * @return
	 */
	public PageBean<News> searchNews(Integer current_page, String search_content);

	/**
	 * 批量删除
	 * @param list
	 * @return
	 */
	public boolean delAllNews(List<News> list);
	
}
