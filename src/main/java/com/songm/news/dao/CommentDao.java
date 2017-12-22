package com.songm.news.dao;

import java.util.List;

import com.songm.news.model.Comment;

public interface CommentDao extends BaseDao<Comment> {

	/**
	 * 通过user_comment_id查询总记录，没有返回0，失败返回null
	 * @param user_comment_id
	 * @return
	 */
	Integer findAllCount_ByUserId(Integer user_comment_id);

	/**
	 * 通过user_comment_id分页查询
	 * @param begin
	 * @param page_size
	 * @param user_comment_id
	 * @return
	 */
	List<Comment> findPage_ByUserId(Integer begin, Integer page_size, Integer user_comment_id);

	/**
	 * 通过news_id查询评论记录数，没有返回0，失败返回null
	 * @param news_id
	 * @return
	 */
	Integer findAllCommentCount_ByNewsId(Integer news_id);

	/**
	 * 通过news_id分页查询新闻所有的评论，失败返回null
	 * @param begin
	 * @param page_size
	 * @param news_id
	 * @return
	 */
	List<Comment> findAllComment_OrderByNewsId(Integer begin, Integer page_size, Integer news_id);

}
