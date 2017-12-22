package com.songm.news.dao;

import java.util.List;

import com.songm.news.model.News;

public interface NewsDao extends BaseDao<News> {

	/**
	 * 通过user_news_id查询记录总数
	 * @param user_news_id
	 * @return
	 */
	Integer findAllCount_ByUserId(Integer user_news_id);

	/**
	 * 通过user_news_id分页查询
	 * @param begin
	 * @param page_size
	 * @param user_news_id
	 * @return
	 */
	List<News> findPage_ByUserId(Integer begin, Integer page_size, Integer user_news_id);

	/**
	 * 搜索到新闻的记录数
	 * @param search_content
	 * @return
	 */
	Integer searchNewsCount(String search_content);

	/**
	 * 分页搜索新闻
	 * @param begin
	 * @param page_size
	 * @param search_content
	 * @return
	 */
	List<News> searchNews(Integer begin, Integer page_size, String search_content);
	
}
