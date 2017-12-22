package com.songm.news.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.songm.news.dao.CommentDao;
import com.songm.news.model.Comment;
import com.songm.news.model.PageBean;
import com.songm.news.service.CommentService;
import com.songm.news.utils.Constants;
import com.songm.news.utils.DateTime;

@Transactional
public class CommentServiceImpl implements CommentService {

	private CommentDao commentDao;
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	private PageBean<Comment> pageBean;
	public void setpageBean(PageBean<Comment> pageBean) {
		this.pageBean = pageBean;
	}

	public List<Comment> findAllComment() {
		return commentDao.findAll();
	}

	public PageBean<Comment> commentListPage(Integer current_page) {
		Integer allCount = commentDao.findAllCount();//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //总记录数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(commentDao.findPage(pageBean.getBegin(), pageBean.getPage_size()));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

	public boolean deleteComment(Comment comment) {	
		return commentDao.delete(comment);
	}

	public PageBean<Comment> commentListPage_ByUserId(Integer current_page, Integer user_comment_id) {
		Integer allCount = commentDao.findAllCount_ByUserId(user_comment_id);//总记录数
		System.out.println(allCount);
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //总记录数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(commentDao.findPage_ByUserId(pageBean.getBegin(), pageBean.getPage_size(), user_comment_id));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

	public Integer addComment(Comment comment) {
		comment.setComment_datetime(DateTime.get1());
		return commentDao.save(comment);
	}

	public PageBean<Comment> findAllComment_OrderByNewsId(Integer current_page, Integer news_id) {
		Integer allCount = commentDao.findAllCommentCount_ByNewsId(news_id);//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(commentDao.findAllComment_OrderByNewsId(pageBean.getBegin(), pageBean.getPage_size(), news_id));  //每页记录的list集合
			return pageBean;
		} else {
			return null;
		}
	}

}
