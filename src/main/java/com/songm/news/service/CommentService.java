package com.songm.news.service;

import java.util.List;

import com.songm.news.model.Comment;
import com.songm.news.model.PageBean;

public interface CommentService {

	/**
	 * 查询所有评论，没有或失败返回null
	 * @return
	 */
	public List<Comment> findAllComment();

	/**
	 * 分页查询所有评论，没有或失败返回null
	 * @param current_page
	 * @return
	 */
	public PageBean<Comment> commentListPage(Integer current_page);

	/**
	 * 删除评论，成功返回true，失败返回false
	 * @param comment
	 */
	public boolean deleteComment(Comment comment);

	/**
	 * 通过外键user_comment_id分页查询所有评论，没有或失败返回null
	 * @param current_page
	 * @return
	 */
	public PageBean<Comment> commentListPage_ByUserId(Integer current_page, Integer user_comment_id);

	/**
	 * 添加评论，返回添加后的comment_id，失败返回null
	 * @param comment
	 * @return
	 */
	public Integer addComment(Comment comment);

	/**
	 * 通过news_id分页查询新闻所有的评论，失败返回null
	 * @param current_page
	 * @param news_id
	 * @return
	 */
	PageBean<Comment> findAllComment_OrderByNewsId(Integer current_page, Integer news_id);
	
}
