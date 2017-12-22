package com.songm.news.service;

import com.songm.news.model.News;
import com.songm.news.model.PageBean;

public interface BeforeService {

	/**
	 * 通过columns_news_id分页取出新闻，失败返回null
	 * @param current_page 当前页
	 * @param columns_news_id 外键
	 * @return
	 */
	PageBean<News> findAllNews_ByColumns(Integer current_page, Integer columns_news_id);

	/**
	 * 通过news_id取出新闻内容
	 * @param news_id
	 * @return
	 */
	News findNews_Byid(Integer news_id);

	/**
	 * 逆序分页查询，失败返回null
	 * @param current_page
	 * @return
	 */
	PageBean<News> findAllNews_OrderBy(Integer current_page);

}
