package com.songm.news.dao;

import java.util.List;

import com.songm.news.model.News;

public interface BeforeDao {

	/**
	 * 条件查询所有新闻记录数
	 * @param columns_news_id 新闻所属栏目
	 * @return
	 */
	Integer findAllCount_ByColumns(Integer columns_news_id);
	
	/**
	 * 分页条件查询
	 * @param begin 当前位置
	 * @param page_size 显示大小
	 * @param columns_news_id 新闻所属栏目
	 * @return
	 */
	List<News> findAllNews_ByColumns(Integer begin, Integer page_size, Integer columns_news_id);

	/**
	 * findNews_Byid
	 * @param news_id
	 * @return
	 */
	News findNews_Byid(Integer news_id);

	/**
	 * 取到所有记录总数
	 * @return
	 */
	Integer findAllCount();

	/**
	 * findAllNews_OrderBy
	 * @param begin
	 * @param page_size
	 * @return
	 */
	List<News> findAllNews_OrderBy(Integer begin, Integer page_size);

}
